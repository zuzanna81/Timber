class AddAttributesToMembers < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :last_name, :string
    add_column :members, :relationship, :string
    add_column :members, :date_of_birth, :date
  end
end
