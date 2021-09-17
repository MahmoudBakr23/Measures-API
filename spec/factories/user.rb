require 'faker'
FactoryBot.define do
  factory :user do
    name { 'bakr' }
    email { Faker::Internet.email }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
