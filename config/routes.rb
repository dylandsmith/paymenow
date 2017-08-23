Rails.application.routes.draw do
  
  post 'logged_in_home/add_new_property'
  post 'logged_in_home/add_unit_to_property'

  devise_for :users, path_names: {sign_in: 'login', sign_out: 'logout'}

  authenticated :user do
    root 'logged_in_home#index', as: :authenticated_root
  end

  root 'home#index'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
