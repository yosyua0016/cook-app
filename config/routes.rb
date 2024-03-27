Rails.application.routes.draw do
  devise_for :users
  get 'posts/index'
  root "posts#index"
  
  #root "users#show"
  #as :user do
   # get '/users/sign_out', to: 'devise/sessions#destroy', as: :logout
  #end
  resources :users, only: [:show] # ユーザーのプロフィールページへのルートを追加
  resources :posts
end
