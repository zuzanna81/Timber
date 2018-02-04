class User < ApplicationRecord
  belongs_to :family, optional: true
  has_many :albums, through: :family
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
