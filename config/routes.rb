Rails.application.routes.draw do
  get "lists/index" => "lists#index"
  get "lists/new" => "lists#new"
  get "lists/:id" => "lists#show"
  post "lists/create" => "lists#create"
  get "lists/:id/edit" => "lists#edit"
  post "lists/:id/update" => "lists#update"
  post "lists/:id/destroy" => "lists#destroy"
  
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get "users/:id" => "users#show"
  post "logout" => "users#logout"
  post "login" => "users#login"
  get "login" => "users#login_form"
  
  get "/" => "home#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
