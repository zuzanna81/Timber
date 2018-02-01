require 'rails_helper'

RSpec.describe Member, type: :model do
  describe 'DB Table' do
   it { is_expected.to have_db_column :id }
   it { is_expected.to have_db_column :first_name }
   it { is_expected.to have_db_column :last_name }
   it { is_expected.to have_db_column :relationship }
   it { is_expected.to have_db_column :date_of_birth }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :first_name }
    it { is_expected.to validate_presence_of :relationship }
  end

  # describe "db seed tests" do
  #   before(:each) do
  #     load "#{Rails.root}/db/seeds.rb"
  #   end

  describe 'FactoryBot' do
    it 'should be valid'  do
      expect(FactoryBot.create(:member)).to be_valid
    end
  end
end
