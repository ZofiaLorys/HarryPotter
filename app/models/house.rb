class House < ApplicationRecord
    has_many :students, dependent: :destroy
    has_many :teachers, dependent: :destroy

    validates :name, presence: true, uniqueness: true
    validates :points, numericality: { only_integer: true}
end
