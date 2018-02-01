class Member < ApplicationRecord
  attr_accessible :first_name, :last_name, :created_at, :family_tree_id, :date_of_birth
  validates_presence_of :first_name

  belongs_to :family_tree
  has_many :relationship
  has_ancestry
end
