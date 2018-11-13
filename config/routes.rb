Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  devise_for :users
  resources :users
  resources :workshops
  resources :questions
  resources :grades
  resources :subjects
  resources :students
  resources :administrators
  resources :locations
  resources :cities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
