Rails.application.routes.draw do

  devise_for :users, controllers: {
      invitations: 'invitations'
  }
  root controller: :index, action: :index
  resources :photos, only: [:index, :show, :create, :new]
  resources :albums, only: [:index, :show, :new, :create]
end
