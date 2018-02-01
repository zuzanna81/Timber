class RemoveColumnsFromFamilyTree < ActiveRecord::Migration[5.1]
  def up
    remove_column :family_trees, :first_name
    remove_column :family_trees, :date_of_birth
    remove_column :family_trees, :image
  end
end
