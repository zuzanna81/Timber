Rails.application.routes.draw do

  root controller: :index, action: :index
  resources :photos, only: [:index, :show, :create, :new]
end
