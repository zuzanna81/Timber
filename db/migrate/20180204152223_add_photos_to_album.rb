class AddPhotosToAlbum < ActiveRecord::Migration[5.1]

  def self.up
    change_table :albums do |t|
      t.references :photos, foreign_key: true
    end
  end
end