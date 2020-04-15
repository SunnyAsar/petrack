require 'rails_helper'

RSpec.describe Category, type: :model do
  context "Validations" do
    it { should validate_presence_of(:name) }
  end

  context "Create Category" do
    it 'saves successfully' do
      cat = build(:category)
      expect(cat).to be_valid
    end

    it 'fails to save' do
      cat = build(:invalid_category)
      expect(cat).to_not be_valid
    end
  end
  
end
