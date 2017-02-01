Rails.application.routes.draw do

  devise_for :users

  devise_scope :user do
  	get 'login', to: 'devise/sessions#new'
  	get 'newuser', to: 'devise/registrations#new'
	end

  get 'settings', to: 'pages#settings'


  resources :posts

root to: 'pages#home'
end
