class Measure < ApplicationRecord
  belongs_to :user
  validates_presence_of :name, :count, :time
  validates_uniqueness_of :name
end
