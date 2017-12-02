Rails.application.routes.draw do
  root :to => 'home#index'
  devise_for :users
  resources :home, only: :index
  resources :cvs do
    resources :jobs
  end
  resources :cvs do
    resources :schools
  end
  resources :cvs do
    resources :projects
  end
  resources :cvs do
    resources :blogs
  end
end
