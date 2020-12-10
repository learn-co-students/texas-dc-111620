class Kitten < ApplicationRecord
    has_many :playdates
    has_many :people, through: :playdates
end