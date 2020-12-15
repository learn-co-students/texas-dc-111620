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
        @kitten = Kitten.new(kitten_params)
        if @kitten.valid?
            @kitten.save
            redirect_to kittens_path
        else
            flash[:errors] = @kitten.errors.full_messages
            redirect_to new_kitten_path
        end

    end

    def kitten_params
        # whitelisting and making sure the column name match our form submission
        params.require(:kitten).permit(:name, :age, :breed, :personality)
    end
end
