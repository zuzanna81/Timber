class ChangeColumnAlbumsName < ActiveRecord::Migration[5.1]
  def self.up
  	rename_column :albums, :name, :title
  end	
end
