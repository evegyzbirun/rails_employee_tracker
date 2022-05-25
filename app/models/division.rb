class Division < ApplicationRecord
  has_many :employees, dependent: :destroy
  validates :name, presence: true
  validates_length_of :name, maximum: 30
end