class User < ApplicationRecord
  belongs_to :family, optional: true
  has_and_belongs_to_many :family_albums, optional: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
