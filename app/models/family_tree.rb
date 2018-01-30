class FamilyTree < ApplicationRecord
  validates_presence_of :first_name, :relationship
  has_ancestry
end
