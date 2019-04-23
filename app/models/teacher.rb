class Teacher < ApplicationRecord
  belongs_to :house
  has many :appointments
  has many :students, through: :appointment

  validates :name, presence: true
end
