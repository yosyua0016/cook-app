Rails.application.routes.draw do
  devise_for :users

  as :user do
    get '/users/sign_out', to: 'devise/sessions#destroy', as: :logout
  end
  
  get 'posts/index'
  root "posts#index"
  
  resources :users, only: [:show, :destroy] # ユーザーのプロフィールページへのルートを追加
  resources :posts
end
