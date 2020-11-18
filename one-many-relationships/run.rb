require 'pry'
# Person class 
# name, age, list of cats 
class Person 

    attr_accessor :name, :age, :cats

    @@all = [] #class variable, which means the CLASS has access to this

    def initialize(name, age)
        @name = name 
        @age = age
        # @cats = []
        
        # binding.pry
        self.class.all << self
        # @@all << self
        
    end

    def get_cat(cat_to_added)
        # I want to get a cat and associate it to THIS list of cats
        
        # cat_to_added is an instance of CAT, it is a cat object 
        if(cat_to_added.person !=  nil)
            "No! You can't take this cat"
        else
        cat_to_added.person = self
        end

        # @cats << cat_to_added
        # binding.pry

    end

    def self.all #self points to the class 'Person'
        @@all
    end

    def cats
        Cat.all.select do  | cat |
            cat.person == self
        end
    end
    
end

class Cat 
#     Cat class 
# name, age, person

attr_accessor :name, :person
attr_reader :age

@@all = []

def initialize(name, age)
    @name = name 
    @age = age 
    # @person = {}

    self.class.all << self
end

def self.all
    @@all
end

# I want to see the oldest cat 
def self.oldest
    # variable holding our max value 
    oldest_age = 0
    name = ""
    self.all.each do | cat |
        if cat.age > oldest_age
            oldest_age = cat.age
            name = cat.name
        end
    end
    name
end

end

raul = Person.new("Raul", 27) # raul.initialize
tj = Person.new("tj", 30) # tj.initialize

cat1 = Cat.new("Mochi", 2)
cat2 = Cat.new("Hikari", 8)
cat3 = Cat.new("Jack", 6)
cat4 = Cat.new("Sasuke", 4)
cat5 = Cat.new("Socrates", 1)
cat6 = Cat.new("Eli", 10)
cat7 = Cat.new("Coco", 3)

binding.pry 
0