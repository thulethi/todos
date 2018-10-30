Rails.application.routes.draw do
  root to: 'todos#index'

  resources :todos, only: %w[index new create]
end
