Rails.application.routes.draw do
  resources :workshops
  resources :questions
  resources :grades
  resources :subjects
  resources :students
  resources :administrators
  resources :users
  resources :locations
  resources :cities
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
