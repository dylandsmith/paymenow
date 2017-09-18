Rails.application.routes.draw do
  
  #resources :examples

  namespace :managers do
    resources :properties do
      resources :units
    end
  end

  namespace :tenants do
    resources :rented_units
  end

  devise_for :users, path_names: {sign_in: 'login', sign_out: 'logout'}

  authenticated :user do
    root 'logged_in_home#index', as: :authenticated_root
  end

  root 'home#index'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
