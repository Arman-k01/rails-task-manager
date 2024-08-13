# config/routes.rb
Rails.application.routes.draw do
  # Root path
  root to: 'tasks#index'

  # RESTful routes for tasks except show
  resources :tasks, except: [:show]

  # Custom show route with a different name
  get 'tasks/:id', to: 'tasks#show', as: :show_task
end
