Rails.application.routes.draw do
  resources :comments do
    resources :likes, only: [:create, :destroy]
end
  devise_for :users
  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
end
  resources :links do
	member do
	  patch 'like', to: 'links#like'
	end
	resources :comments
end
  root 'links#index'

  get '/mylink', to: 'links#mylink'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
