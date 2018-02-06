class User < ApplicationRecord
  belongs_to :family, optional: true
  has_many :albums, through: :family

  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def has_family?
  	self.family.present?
  end
end
