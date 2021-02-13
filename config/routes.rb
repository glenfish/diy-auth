Rails.application.routes.draw do
  resources :users
  root 'pages#home'
  get '/signup', to: 'users#new', as: 'signup'
  get '/signin', to: 'sessions#new', as: 'signin'
  post '/signin', to: 'sessions#create', as: 'create_session'
  delete '/signout', to: 'sessions#destroy', as: 'signout'
  delete '/users/destroy', to: 'users#destroy', as: 'users_destroy'
  get '/restricted', to: 'pages#restricted', as: 'restricted'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
