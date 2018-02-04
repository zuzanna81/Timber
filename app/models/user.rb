class User < ApplicationRecord
  belongs_to :family, optional: true
  has_many :albums, through: :family
  #has_and_belongs_to_many :albums, optional: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
