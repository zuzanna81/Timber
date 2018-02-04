class AddFamilyAlbumsToUsers < ActiveRecord::Migration[5.1]
  def self.up
    change_table :users do |t|
      t.belongs_to :album, foreign_key: true
    end
  end
end
