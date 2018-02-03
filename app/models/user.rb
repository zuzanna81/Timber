class User < ApplicationRecord
  belongs_to :family
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
