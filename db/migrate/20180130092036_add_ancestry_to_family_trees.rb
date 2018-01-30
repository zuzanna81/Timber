class AddAncestryToFamilyTrees < ActiveRecord::Migration[5.1]
  def change
    add_column :family_trees, :ancestry, :string
    add_index :family_trees, :ancestry
  end
end
