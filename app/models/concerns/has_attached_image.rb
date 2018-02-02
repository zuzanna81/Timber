module HasAttachedImage
  extend ActiveSupport::Concern

  included do
    has_attached_file :image,
                      default_url: Rails.root + "spec/fixture/random.png"

    validates_attachment :image,
                         content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  end
end
