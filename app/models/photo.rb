class Photo < ApplicationRecord
  include HasAttachedImage

  belongs_to :album
  validates_presence_of :title
end
