Rails.application.routes.draw do
  get 'task/index'
  
  resources :task

  root 'task#index'
end
