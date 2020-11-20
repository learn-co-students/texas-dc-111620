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
        max_views = 0 
        viewer = nil
        Viewer.all.each do  | each_viewer  |
            if each_viewer.reviews.length > max_views
                max_views = each_viewer.reviews.length
                viewer = each_viewer
            end
        end
        viewer
    end

    def names
        # I want the name of all viewers who had made a review
        Review.all.map do | review |
            review.viewer.name
        end 
    end


end