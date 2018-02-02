Rails.application.routes.draw do

  get '/family_tree/', to: 'family_tree#show', as: 'family_tree'
  devise_for :users, controllers: { registrations: "registrations" }
  root controller: :index, action: :index
  resources controller: :family_tree, only: [:show]
  resources :photos, only: [:index, :show, :create, :new]
end
