require_relative '../config/environment.rb'


artist1 = Artist.new("Raul", 3)
artist2 = Artist.new("Blaire", 5)
artist3 = Artist.new("Rahel", 1)
gallery1 = Gallery.new("MFA", "HTX")
painting1 = Painting.new('sum art', 350, artist1, gallery1)
painting2 = Painting.new('blaire art', 500, artist2, gallery1)
painting3 = Painting.new('rahel art', 200, artist3, gallery1)
painting4 = Painting.new('rahel art2', 500, artist3, gallery1)
binding.pry

puts "Bob Ross rules."
