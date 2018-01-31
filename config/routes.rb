Rails.application.routes.draw do
  get 'family/show'

  devise_for :users
  root controller: :index, action: :index
  resources controller: :family, only: [:show]
end
