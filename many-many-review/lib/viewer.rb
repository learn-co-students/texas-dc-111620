class Viewer

    attr_reader :name
    attr_accessor :location, :cable_provider

    def initialize(name, location, cable_provider="none")
        @name = name
        @location = location
        @cable_provider = cable_provider
    end

    def reviews
        # I want all reviews THIS veiwer has made 

        # Get all Reviews
        # check each review's viewer property 
        # to match with the instance 
        # that called this method
        Review.all.select do | review |
            review.viewer == self
        end
    end
end