Rails.application.routes.draw do
  resources :roles
  resources :auditions
  resources :actors_projects
  resources :projects
  resources :actors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
