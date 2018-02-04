class CreateFamilyAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.belongs_to :family, foreign_key: true
      t.integer :user_id

      t.timestamps
    end
  end
end
