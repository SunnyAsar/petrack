require 'rails_helper'

RSpec.describe User, type: :model do
  context "Validate user" do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :email }
    it { should validate_presence_of :phone }
    it { should validate_presence_of :password_digest }
  end

end
