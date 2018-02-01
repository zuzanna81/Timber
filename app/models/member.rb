class Member < ApplicationRecord
  validates_presence_of :first_name, :last_name, :created_at, :relationship, :date_of_birth

  belongs_to :family_tree
  has_many :relationships
  has_ancestry
end
