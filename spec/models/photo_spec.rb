require 'rails_helper'

RSpec.describe Photo, type: :model do

  describe 'DB table' do
    it { is_expected.to have_db_column :id}
    it { is_expected.to have_db_column :title}
  end

  describe 'Image' do
    it { is_expected.to have_db_column :image_file_name}
    it { is_expected.to have_db_column :image_content_type}
    it { is_expected.to have_db_column :image_file_size}
    it { is_expected.to have_db_column :image_updated_at}
    it { is_expected.to have_attached_file :image}
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :title}
  end

end
