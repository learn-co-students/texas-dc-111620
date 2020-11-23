class Artist

  attr_reader :name, :years_experience

  @@all = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    self.class.all << self 
    # @@all << self 
  end

  def self.all 
    @@all
  end

  def paintings 
    Painting.all.select do | painting_object |
      painting_object.artist == self
    end
  end

  def galleries
    # return gallery object that THIS artist's art is in
    #  all_paintings = Painting.all.select do | p_object | 
    #   p_object.artist == self
    #  end
    #  all_paintings.map do | painting | 
    #   painting.gallery
    #  end
    self.paintings.map{|painting| painting.gallery}
  end

  def cities 
    galleries.map do |gallery| 
      gallery.city
    end
  end

  def self.total_experience
    # Returns an `integer` that is the 
    # total years of experience of all artists
    total_experience = 0
    self.all.each do | artist |
      total_experience += artist.years_experience
    end
    total_experience
  end

  def self.most_prolific
    # * Returns an `instance` of the artist with the 
    # highest amount of paintings per year of experience.

    # go through all artist, for every artist call their paintings method
    # divide that by years of experience, and  hold that value as we go 
    # through all artist and replace accordingly 
    average = 0  
    chosen_artist = nil
    self.all.each do | artist |
      if artist.paintings.length.to_f / artist.years_experience.to_f > average
        chosen_artist = artist
        average = artist.paintings.length.to_f / artist.years_experience.to_f
      end
    end 
    chosen_artist

  end

  def create_painting(title, price, gallery)

    Painting.new(title,  price, self, gallery)

  end


end

# cretae an Artist object 
# call that painting method