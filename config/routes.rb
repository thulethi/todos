Rails.application.routes.draw do
  root to: 'todos#index'

  resources :todos,   only: %w[index new create] do
    resource :completion, only: %w[create destroy]
  end

  resource :session, only: %w[new create]
end
