Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations" }
  root controller: :index, action: :index
  resources controller: :family_tree, only: [:show, :new], as: :family_tree
  resources controller: :member, only: [:new], as: :member
end
