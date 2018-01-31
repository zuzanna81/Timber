Rails.application.routes.draw do

  get '/family/', to: 'family#show', as: 'family'
  devise_for :users, controllers: { registrations: "registrations" }
  root controller: :index, action: :index
  resources controller: :family, only: [:show]
end
