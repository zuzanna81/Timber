Rails.application.routes.draw do

  root controller: :index, action: :index
  resources :album, only: [:show]
end
