Rails.application.routes.draw do
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"
  get "guest_login" => "users#guest_login"
  
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  
  get 'posts/index' => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
   get "users/:id" => "users#show"
  post "posts/create" => "posts#create"
   get "posts/:id/edit" => "posts#edit"
   post "posts/:id/update" => "posts#update"
   post "posts/:id/destroy" => "posts#destroy"
   post "likes/:post_id/create" => "likes#create"
   post "likes/:post_id/destroy" => "likes#destroy"
   get "users/:id/likes" => "users#likes"
  get 'top/index'
  
  
  get 'home/index' => "home#index"
  root 'home#index'
  
   get 'introduction/index'
  root 'introduction#index'

  resources :top do
    collection do
      get :configuration
      post :configuration_update
    end
  end

  resources :tasks do
    collection do
      get :configuration
      post :configuration_update
    end
  end
  
  
  resources :videos, only: %i(new create index show destroy)
end