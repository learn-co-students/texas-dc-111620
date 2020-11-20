class Review

    attr_reader :content, :rating, :tv_show, :viewer
    
    @@all = []

    def initialize(content, rating, tv_show, viewer)
        @content = content
        @rating = rating
        @tv_show = tv_show
        @viewer = viewer

        self.class.all << self
    end


    def self.all
        @@all
    end


    # I want a method that will return the viewer with the most reviews
    def self.most_reviews 
        # we need to iterate through all reviews
        # and find the viewer with the most reviews
    end


end