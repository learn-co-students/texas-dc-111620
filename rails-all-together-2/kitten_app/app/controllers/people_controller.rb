class PeopleController < ApplicationController
    def index
        @people = Person.all
    end

    def show
        # byebug
        @person = Person.find(params[:id])
    end
end
