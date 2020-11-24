# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
l1 = Lifter.new("Raul", 7)
l2 = Lifter.new("Oumaima", 100)
l3 = Lifter.new("Brian R", 55)
l4 = Lifter.new("Garrett", 220)

g1 = Gym.new("Lifetime")
g2 = Gym.new("24 Hour")
g3 = Gym.new("LA Fitness")

m1 = Membership.new(5000, g1, l1) #raul overpaying 
m2 = Membership.new(60,  g1, l2)
m3 = Membership.new(60,  g1, l3)
m4 = Membership.new(60,  g1, l4)
m5 = Membership.new(30,  g2, l3)
m6 = Membership.new(60,  g3, l4)



binding.pry

puts "Gains!"
