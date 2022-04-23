Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Index all tasks
  get '/tasks', to: 'tasks#index'

  # Display new task form
  get '/tasks/new', to: 'tasks#new'
  # Create a new task
  post 'tasks', to: 'tasks#create'

  # Display edit task form
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  # Update task
  patch 'tasks/:id', to: 'tasks#update'

  # Show one task
  get '/tasks/:id', to: 'tasks#show', as: :task

  # Delete task
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete
end
