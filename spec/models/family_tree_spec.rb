require 'rails_helper'
require 'faker'
require 'factory_bot_rails'

RSpec.describe FamilyTree, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :first_name }
    it { is_expected.to have_db_column :last_name }
    it { is_expected.to have_db_column :relationship }
    it { is_expected.to have_db_column :date_of_birth }
    it { is_expected.to have_db_column :image }
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

  describe "db seed tests" do
    before(:each) do
      load "#{Rails.root}/db/seeds.rb"
    end

    it 'should return collection of family members' do
      expect(FamilyTree.count).to be(5)
    end
  end
end
