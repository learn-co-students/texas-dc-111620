class KittensController < ApplicationController
    def index 
        @kittens = Kitten.all
    end

    def show 
        @kitten = Kitten.find(params[:id])
        # byebug
    end

    def new 
        @kitten = Kitten.new
    end

    def create 
        @kitten = Kitten.create(name: params[:kitten][:name], )
        # byebug
        redirect_to kittens_path
    end

    def kitten_params
        # whitelisting and making sure the column name match our form submission
        params.require(:kitten).permit(:name, :age, :breed, :personality)
    end
end
