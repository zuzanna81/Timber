Rails.application.routes.draw do

  get '/familytree/', to: 'familytree#show', as: 'familytree'
  devise_for :users, controllers: { registrations: "registrations" }
  root controller: :index, action: :index
  resources controller: :familytree, only: [:show]
end
