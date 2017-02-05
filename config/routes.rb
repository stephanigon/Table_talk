Rails.application.routes.draw do

  namespace :admin do
    resources :users
resources :posts
resources :admin_users

    root to: "users#index"
  end

  devise_for :users

  devise_scope :user do
  	get 'login', to: 'devise/sessions#new'
  	get 'newuser', to: 'devise/registrations#new'
	end

  get 'settings', to: 'pages#settings'


  resources :posts

root to: 'pages#home'
end
