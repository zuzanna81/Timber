class CreateJoinTableFamilyAlbumUser < ActiveRecord::Migration[5.1]
  def change
    create_join_table :albums, :users do |t|
      t.index [:album_id, :user_id]
    end
  end
end
