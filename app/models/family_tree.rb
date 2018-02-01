class FamilyTree < ApplicationRecord
  validates_presence_of :relationship
  has_many :members
  has_ancestry
end
