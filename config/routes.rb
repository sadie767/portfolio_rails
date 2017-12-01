Rails.application.routes.draw do
  root :to => 'employees#index'
  devise_for :users
  resources :employees
end
