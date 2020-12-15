class Kitten < ApplicationRecord
    attr_accessor :name
    has_many :playdates
    has_many :people, through: :playdates

    validates :age, presence: true
    validates :breed, presence: true
    validates :personality, presence: true
    validate :whatever

    def whatever
        if @name == ""
            self.errors.add(:name, "AHA, THIS IS MY CUSTOM VALIDATION")
        end
    end


end