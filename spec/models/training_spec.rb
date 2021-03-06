require 'rails_helper'

RSpec.describe Training, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
  end

  describe 'associations' do
    it { should have_many(:measures) }
    it { should belong_to(:user) }
  end
end
