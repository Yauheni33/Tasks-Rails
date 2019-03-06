Rails.application.routes.draw do
  get 'task/index'
  root 'task#index'
end
