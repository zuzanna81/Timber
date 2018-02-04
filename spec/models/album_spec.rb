require 'rails_helper'

RSpec.describe Album, type: :model do
  describe 'DB Table' do
    it { is_expected.to have_db_column :id }
end

  describe 'Validations' do
    it { is_expected.to belong_to :family }
    it { is_expected.to have_and_belong_to_many :users }
  end
end
