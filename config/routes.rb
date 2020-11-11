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
  
  
  get 'top/index'
  root 'top#index'
  
  
   get 'introduction/index'
  root 'introduction#index'
  
  get 'name/index'
  root 'name#index'

  get 'help/index'
  root 'help#index'
  
   get 'service/index'
  root 'service#index'
  
  get 'plan/index'
  root 'plan#index'
  
  get 'movie/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end