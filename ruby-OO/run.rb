require 'pry'

class Person
    # we have a 'thing' called a Person 
    attr_accessor :f_foods
    attr_reader :name
    attr_writer :name 

    @@all = []
    # '@@' denotes a class variable
    # it makes it available to the entire class 


    def initialize(name="un-named", favorite_food)
        # it fires every time we create a new instance 
        @name = name #setting name variable 
        @f_foods = []
        @f_foods << favorite_food
        # instance variable '@'
        # assigning some data to be accessible to THAT object throughout it's lifespan

        # binding.pry
        @@all << self 
    end

    # def name  #reader method, getter method
    #     @name
    # end

    # def name=(name) #writer method, setter method
    #     @name = name
    # end

    # def food
    #     "My favorite food is #{@f_food}"
    # end

    # def food=(food)
    #     @f_food = food
    # end

    def eat(food)
        # "{this persons name} is gonna eat {food}"
        "#{@name} is gonna eat #{food}"
    end

    def add_to_favorites(food)
        # shovel new food into our array for THAT object
        binding.pry
        self.f_foods << food
    end

    def self.all
        @@all
    end

# binding.pry
end

# UPON CREATION, we need a name of that person 

#raul = Person.new #creating an instance of PERSON
raul = Person.new("Raul", "tacos")
duncan = Person.new("Duncan", "steak")
avelon = Person.new("Avelon", "pasta")
kishana = Person.new("Kishana", "burger")
chi = Person.new("Chi", "steak")
mary = Person.new("Mary Ann", "thai")



binding.pry 
0