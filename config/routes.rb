Rails.application.routes.draw do
  
  # resources :examples

  namespace :managers do
    resources :properties, only: [:show, :create] do
      resources :units, only: [:show, :create]
    end
  end

  devise_for :users, path_names: {sign_in: 'login', sign_out: 'logout'}

  authenticated :user do
    root 'logged_in_home#index', as: :authenticated_root
  end

  root 'home#index'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
