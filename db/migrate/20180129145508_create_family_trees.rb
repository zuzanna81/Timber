class CreateFamilyTrees < ActiveRecord::Migration[5.1]
  def change
    create_table :family_trees do |t|
      t.string :first_name, :last_name, :relationship
      t.integer :date_of_birth

      t.timestamps
    end
  end
end
