require 'rails_helper'
require 'faker'

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
  5.times do
    FamilyTree.create([{
      first_name: Faker::Name.first_name,
      surname: Faker::Name.last_name,
      relationship: Faker::HowIMetYourMother.character,
      date_of_birth: Faker::Date.birthday(0, 100)
      }])
    end

    it "should return family members" do
      expect(FamilyTree.count).to be(5)
    end
  end
end
