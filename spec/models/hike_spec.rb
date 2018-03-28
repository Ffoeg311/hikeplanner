require 'rails_helper'

RSpec.describe Hike, type: :model do
  describe 'validations' do
    it 'has a valid factory' do
      expect(FactoryBot.create(:hike)).to be_valid
    end
    it 'is invalid without a user' do
      expect(FactoryBot.build(:hike, user: nil)).to be_invalid
    end
  end
end
