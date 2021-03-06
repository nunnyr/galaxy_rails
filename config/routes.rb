Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/planets', to: 'planets#index'


  get '/users', to: 'users#index'
  post '/users', to: 'users#create'
  post '/login', to: 'users#login'


  get '/trips', to: 'trips#index'
  post '/trips', to: 'trips#create'

end
