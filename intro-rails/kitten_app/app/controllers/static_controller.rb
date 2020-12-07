class StaticController < ActionController::Base
    def some_page 
        @cohort_likes = ["food", "pets","Raúl", "all of our instructors", "sleep", "Alec's sweathers", "free testing"]
    end
end