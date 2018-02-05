require 'rails_helper'

RSpec.describe Album, type: :model do
  describe 'DB Table' do
    it {is_expected.to have_db_column :id}
    it {is_expected.to have_db_column :name}
  end

  describe 'Validations' do
    it {is_expected.to belong_to :family}
  end
end
