class Student < ApplicationRecord
  belongs_to :house
  has many :appointments
  has many :teachers, through: :appointment

  validates :name, presence: true
end
