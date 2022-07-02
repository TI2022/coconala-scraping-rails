require 'base64'
require 'json'
require 'net/https'

module Vision
  class << self
    def get_image_data(image_file)
      # APIのURL作成
      api_url = "https://vision.googleapis.com/v1/images:annotate?key=AIzaSyDbh5g0oPG8nocKF0GxwTPG12JUta1mkus"

      # 画像をbase64にエンコード
      # base64_image = Base64.encode64(open("/#{image_file}").read)
      base64_image = Base64.strict_encode64(File.new(image_file, 'rb').read)

      # APIリクエスト用のJSONパラメータ
      params = {
        requests: [{
          image: {
            content: base64_image
          },
          features: [
            {
              "type": 'TEXT_DETECTION'
            }
          ]
        }]
      }.to_json

      # Google Cloud Vision APIにリクエスト
      uri = URI.parse(api_url)
      https = Net::HTTP.new(uri.host, uri.port)
      https.use_ssl = true
      request = Net::HTTP::Post.new(uri.request_uri)
      request['Content-Type'] = 'application/json'
      response = https.request(request, params)

      # APIレスポンス出力
      JSON.parse(response.body)['responses'][0]['textAnnotations'].pluck('description')
    end
  end
end