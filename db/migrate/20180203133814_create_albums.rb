class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.references :family, foreign_key: true
      t.timestamps
    end
  end
end
