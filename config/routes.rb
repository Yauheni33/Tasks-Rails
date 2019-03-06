Rails.application.routes.draw do
  resource :tasks, only: [:index, :create]
  root 'tasks#index'
end
