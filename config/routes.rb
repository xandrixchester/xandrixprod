Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'main_pages#index'

  resources :arts, only: [:index, :show]
  namespace :artist do
  	resources :arts, only: [:new, :create, :show]
  end

end
