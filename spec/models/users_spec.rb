require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'DB Table' do
    it {is_expected.to have_db_column :id}
    it {is_expected.to have_db_column :email}
    it {is_expected.to have_db_column :encrypted_password}
    it {is_expected.to have_db_column :reset_password_token}
    it {is_expected.to have_db_column :reset_password_sent_at}
    it {is_expected.to have_db_column :remember_created_at}
    it {is_expected.to have_db_column :sign_in_count}
    it {is_expected.to have_db_column :current_sign_in_at}
    it {is_expected.to have_db_column :last_sign_in_at}
    it {is_expected.to have_db_column :current_sign_in_ip}
    it {is_expected.to have_db_column :last_sign_in_ip}
    it {is_expected.to have_db_column :created_at}
    it {is_expected.to have_db_column :updated_at}
  end

  describe 'Validations' do
    it {is_expected.to validate_presence_of :email}
    it {is_expected.to validate_presence_of :password}
    it {is_expected.to validate_uniqueness_of(:email).case_insensitive}
    it {is_expected.to validate_confirmation_of :password}
    it {is_expected.not_to allow_value('hey').for :password}
    it {is_expected.not_to allow_value('hey@').for :email}
  end

  describe FactoryBot do
    it 'should be valid' do
      expect(create(:user)).to be_valid
    end
  end

  describe 'Associations' do
    describe 'has_many :album, through: :family' do
      subject {create(:user, family: family)}
      let!(:family) {create(:family)}
      let!(:album) {create(:album, family: family)}


      it 'allows access to album though family' do
        expect(subject.albums).to eq family.albums
      end
    end
  end
  describe 'Instance methods' do 
    describe '#has_family?' do 
      let(:family) {create(:family)}
      subject {create(:user, family: family)}

      it 'response true' do 
        expect(subject.has_family?).to eq true
      end  
    end  
  end   
end
