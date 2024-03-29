Rails.application.routes.draw do
  devise_for :users
  get 'posts/index'
  root "posts#index"
  
  resources :users, only: [:show] # ユーザーのプロフィールページへのルートを追加
  resources :posts
end
