Rails.application.routes.draw do
  get 'projects/index'
  get 'projects/create'
  get 'projects/new'

  root 'projects#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
