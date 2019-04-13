class House < ApplicationRecord
    has_many :students

    validates :name, presence: true, uniqueness: true
    validates :ponts, numericality: { only_integer: true}
end
