require 'rails_helper'

RSpec.describe Pet, type: :model do
  context "Validations" do
    it { should validate_presence_of(:name) }
  end

  context "Create" do
    it 'creates a pet successfully' do
      pet = build(:pet)
      expect(pet).to be_valid
    end

    it 'fails to create pet' do
      pet = build(:invalid_pet)
      expect(pet).to_not be_valid
    end
  end

end
