class CreateFamilyAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :family_albums do |t|

      t.timestamps
    end
  end
end
