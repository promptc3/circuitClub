Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  resources :projects
  resources :teams
  resources :users
end
