class Project < ApplicationRecord
  has_and_belongs_to_many(:employees)
  validates :name, presence: true
  validates_length_of :name, maximum: 30
end