class Employee < ApplicationRecord
  has_and_belongs_to_many(:projects)
  belongs_to :division
  validates :name, presence: true
  validates_length_of :name, maximum: 15
end