Rails.application.routes.draw do

  root 'base_pages#home'

  get '/workspaces', to: 'work_spaces#show'

  get '/workspaces/:project_id', to: 'work_spaces#show'

  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  resources :projects

  resources :users

  resources :todos, only: [:create, :edit, :update, :destroy]

  get '/todos/:todo_id', to: 'todos#toggle'

  get '/todos/all/:project_id', as: :all_todos, to: 'todos#all'

end

