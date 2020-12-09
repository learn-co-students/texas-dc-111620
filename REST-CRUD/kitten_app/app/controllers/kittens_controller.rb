class KittensController < ApplicationController
    def index 
        @kittens = Kitten.all
    end

    def show 
        @kitten = Kitten.find(params[:id])
        # byebug
    end
end
