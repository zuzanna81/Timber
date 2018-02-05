class AddAlbumToPhotos < ActiveRecord::Migration[5.1]
  def self.up
   change_table :photos do |t|
     t.references :album, foreign_key: true
   end
  end
end
