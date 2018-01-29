class ChangeLastName < ActiveRecord::Migration[5.1]
  def change
    rename_column :family_trees, :last_name, :last_name
  end
end
