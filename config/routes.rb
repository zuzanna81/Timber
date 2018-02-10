Rails.application.routes.draw do

  devise_for :users, controllers: {
      invitations: 'invitations',
      registrations: 'registrations'
  }

  root controller: :index, action: :index
  resources :albums, only: [:index, :show, :new, :create] do
    resources :photos, only: [:index, :show, :create, :new, :destroy, :edit, :update]
  end
  resources :family, only: [:create]
end
