
require 'rails_helper'

RSpec.describe ApplicationMailer, type: :mailer do

  let(:user) { create(:user, first_name: 'Thomas', email: 'thomas@email.com' )}
  let(:message) { described_class.test_email(user).deliver_now}

  it 'assigns from field' do
    expect(message.from).to eq ['from@example.com']
  end

  it 'assigns to field' do
    expect(message.to).to eq ['thomas@email.com']
  end

  it 'assigns subject' do
    expect(message.subject).to eq 'Welcome to Timber'
  end
  
end