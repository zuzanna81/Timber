class Photo < ApplicationRecord
  include HasAttachedImage

  validates_presence_of :title
end
