Rails.application.routes.draw do
  resources :watch_boxes
  get 'users/show'
  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  resources :watches
  # get 'home/index'
  root "articles#index"

  get "/articles", to: "articles#index"
  resources :orders
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
