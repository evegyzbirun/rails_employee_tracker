class Division < ApplicationRecord
  has_many :employees
  validates :name, presence: true
  validates_length_of :name, maximum: 30
end