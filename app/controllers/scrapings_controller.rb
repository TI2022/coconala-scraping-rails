class ScrapingsController < ApplicationController
  require 'csv'
  require 'net/http'
  require 'uri'

  def csv
  end

  def index
    uri = "https://coconala-scraping-app.herokuapp.com/crowdworks_scraping"
    @response = Net::HTTP.get_response(URI.parse(uri))
    @res_head = @response.header
    @res_body = @response.body
    p @response
    p @res_body
    p @res_head
  end

  def amazon
    uri = "https://coconala-scraping-app.herokuapp.com/amazon_scraping"
    @response = Net::HTTP.get_response(URI.parse(uri))
    @res_head = @response.header
    @res_body = @response.body
    p @response
    p @res_body
    p @res_head
  end

  def new
  end
  
  def create
  end
  
  def csv_scraping
    @ary_date = params[:first].to_date..params[:last].to_date
    @csv_accounts = Account.includes(:compound_journals).where(accounting_date: @ary_date).merge(Account.order("accounts.accounting_date ASC"))
    respond_to do |format|
      format.html
      format.csv do |csv|
        send_accounts_csv(@csv_accounts)
      end
    end
  end
end
