class AddUsersToFamily < ActiveRecord::Migration[5.1]

  def self.up
    change_table :users do |t|
      t.belongs_to :family, foreign_key: true
    end
  end
end
