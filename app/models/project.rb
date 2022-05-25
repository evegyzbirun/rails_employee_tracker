class Project < ApplicationRecord
  has_and_belongs_to_many(:employees)
  validates :title, presence: true
  validates_length_of :title, maximum: 30
end