class Student < ApplicationRecord
  belongs_to :house
  has_many :appointments
  has_many :teachers, through: :appointment

  validates :name, presence: true
end
