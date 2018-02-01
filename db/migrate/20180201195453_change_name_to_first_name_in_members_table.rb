class ChangeNameToFirstNameInMembersTable < ActiveRecord::Migration[5.1]
  def change
    rename_column :members, :name, :first_name
  end
end
