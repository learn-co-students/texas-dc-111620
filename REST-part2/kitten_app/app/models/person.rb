class Person < ApplicationRecord
    has_many :playdates
    has_many :kittens, through: :playdates
end