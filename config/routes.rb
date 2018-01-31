Rails.application.routes.draw do

  root controller: :index, action: :index
  resources controller: :family_tree, only: [:show]
end
