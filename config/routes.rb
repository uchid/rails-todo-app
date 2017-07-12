Rails.application.routes.draw do

  root 'base_pages#home'

  get '/workspaces', to: 'work_spaces#show'

  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  resources :projects

  resources :users

end
