require_relative './lib/viewer.rb'
require_relative './lib/tv_show.rb'
require_relative './lib/review.rb'
require 'pry'




scott = Viewer.new("Scott", "DC")
blaire = Viewer.new("Blaire", "Houston")
alec = Viewer.new("Alec", "DC")
avelon = Viewer.new("Avelon", "Austin")
kishana = Viewer.new("Kishana", "Houston")
meredith = Viewer.new("Meredith", "DC")

lost = TVShow.new("Lost", 60, "bad", "cbs")
breaking = TVShow.new("Breaking Bad", 60, "drama", "AMC")
office = TVShow.new("The Office", 30, "comedy", "netflix")
mandalorian = TVShow.new("The Mandalorian", 60, "action", "disney")
got = TVShow.new("Game of Throne", 60, "drama", "HBO")

rv1 = Review.new("BAD, I WAS LOST", 2, lost, scott)
rv2 = Review.new("Breaking bad was pretty good", 4, breaking, meredith)
rv3 = Review.new("it was funny", 3, office, avelon)
rv4 = Review.new("It was thrilling!", 4, got, kishana)
rv5 = Review.new("It was a great show!", 4, breaking, scott)
rv6 = Review.new("I DIDNT WANT IT TO END", 5, office, blaire)
rv7 = Review.new("OMG I love it", 4, mandalorian, alec)
rv8 = Review.new("it was _fantastic_", 4, got, meredith)


binding.pry
0

