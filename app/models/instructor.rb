class Instructor < ApplicationRecord
    validates :age, numericality: { 
        less_than: 150, message: "must be less than 150" }
    belongs_to :cohort
end
