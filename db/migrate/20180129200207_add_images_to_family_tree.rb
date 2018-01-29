class AddImagesToFamilyTree < ActiveRecord::Migration[5.1]
  def change
    add_column :family_trees, :image, :string
  end
end
