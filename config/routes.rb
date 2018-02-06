Rails.application.routes.draw do

  devise_for :users, controllers: {
      invitations: 'invitations',
      registrations: 'registrations'
  }
  
  root controller: :index, action: :index
  resources :photos, only: [:index, :show, :create, :new, :destroy, :edit, :update]
  resources :albums, only: [:index, :show, :new, :create]
  resources :family, only: [:create]
end
