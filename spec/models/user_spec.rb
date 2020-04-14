# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Validate user' do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :email }
    it { should validate_presence_of :phone }
    it { should validate_presence_of :password_digest }
  end

  it 'creates a User' do
    user = build(:user)
    expect(user).to be_valid
  end

  it 'fails to create a user' do
    user = build(:invalid_user)
    expect(user).to_not be_valid
  end
end
