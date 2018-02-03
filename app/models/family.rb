class Family < ApplicationRecord
  has_many :users
  has_many :family_albums
end
