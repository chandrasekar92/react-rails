Rails.application.routes.draw do
  resources :microposts
  resources :users
  get 'session/new'
  get 'home/index'
  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'

  resources :articles do
    resources :comments
  end

  # root 'articles#index'
  root 'application#hello'
end
