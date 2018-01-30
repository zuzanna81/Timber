require 'rails_helper'
require 'faker'
require 'factory_bot_rails'

describe 'Belongs to' do
  it { is_expected.to belong_to :member }
end
