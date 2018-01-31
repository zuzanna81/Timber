class Photo < ApplicationRecord
  # has_attached_file :image
  # validates_attachment :image,
  #                    content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  include HasAttachedImage

  validates_presence_of :title
end
