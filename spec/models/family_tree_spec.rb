require 'rails_helper'

RSpec.describe FamilyTree, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :first_name }
    it { is_expected.to have_db_column :surname }
    it { is_expected.to have_db_column :relationship }
    it { is_expected.to have_db_column :date_of_birth }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :first_name }
    it { is_expected.to validate_presence_of :relationship }
  end

  describe 'FactoryBot' do
    it 'should be valid'  do
      expect(FactoryBot.create(:family_tree)).to be_valid
    end
  end

  describe 'Faker' do
    
  end
end
