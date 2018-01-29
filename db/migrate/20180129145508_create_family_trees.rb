class CreateFamilyTrees < ActiveRecord::Migration[5.1]
  def change
    create_table :family_trees do |t|
      t.string :first_name, :surname, :relationship
      t.integer :date_of_birth

      t.timestamps
    end
  end
end
