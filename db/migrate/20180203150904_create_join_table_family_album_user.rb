class CreateJoinTableFamilyAlbumUser < ActiveRecord::Migration[5.1]
  def change
    create_join_table :family_albums, :users do |t|
      t.index [:family_album_id, :user_id]
    end
  end
end
