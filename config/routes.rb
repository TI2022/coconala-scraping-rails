Rails.application.routes.draw do
  
  # トップページ
  root 'sessions#new'
  
  # ユーザー登録ページ
  get '/signup', to: 'users#new'
  
  # ログイン機能
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :users
  
  resources :scrapings do
    collection do
      get 'csv'
    end
  end
  
end