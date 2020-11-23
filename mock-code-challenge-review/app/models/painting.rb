class Painting

  attr_reader :title, :price, :artist, :gallery
  # attr_accessor :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery

    self.class.all << self 
    # @@all << self 
  end

  def self.all
    @@all
  end

  def self.total_price
    # we want  to get the total price of eveyr instance of painting
    total = 0 
    # now we can iterate through entire class
    self.all.each do  | painting |
      total += painting.price #price is  an attribute of painting object 
    end
    # return total at the end
    total
  end
end
