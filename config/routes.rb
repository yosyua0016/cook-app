Rails.application.routes.draw do
  devise_for :users
  get 'posts/index'
  root "posts#index"

  #as :user do
   # get '/users/sign_out', to: 'devise/sessions#destroy', as: :logout
  #end

 resources :posts
end
