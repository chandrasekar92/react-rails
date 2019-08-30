Rails.application.routes.draw do
  devise_for :users
  as :user do
    get '/' => 'devise/registrations#new'
  end
  mount ActionCable.server => "/cable"
  # resources :grid

  # resources :microposts
  # get 'home/index'
  resources :articles do
    resources :comments
  end

  root 'application#hello'
end
