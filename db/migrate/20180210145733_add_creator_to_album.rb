class AddCreatorToAlbum < ActiveRecord::Migration[5.1]
  def change
    add_column :albums, :creator_id, :integer
  end
end
