Rails.application.routes.draw do
  devise_for :users
  # resources :microposts
  get 'home/index'
  resources :articles do
    resources :comments
  end

  # root 'articles#index'
  root 'application#hello'
end
