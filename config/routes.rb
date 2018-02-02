Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations" }
  root controller: :index, action: :index
  resources :family_trees, only: [:show, :index]
  resources :photos, only: [:index, :show, :create, :new]
end
