Rails.application.routes.draw do
  get 'session/new'
  get 'home/index'
  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'

  resources :articles

  root 'articles#index'
end
