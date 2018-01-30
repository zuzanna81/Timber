class FamilyTree < ApplicationRecord
  validates_presence_of :relationships
  has_many :members
  has_ancestry
end
