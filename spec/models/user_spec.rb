require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:password) }
    it { should have_secure_password }
  end

  describe 'associations' do
    it { should have_many(:measures) }
    it { should have_many(:trainings) }
  end
end
