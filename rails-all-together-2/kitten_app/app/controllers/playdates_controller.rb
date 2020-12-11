class PlaydatesController < ApplicationController

    def new 
        @playdate = Playdate.new
    end
    def create
        @playdate = Playdate.create(playdate_params)
        person = Person.find(playdate_params[:person_id])
        # playdate_params[:kitten_id].each do  | kitten_id |
        #     if kitten_id != ""
        #         Playdate.create(person_id: playdate_params[:person_id], date: playdate_params[:date], time: playdate_params[:time], kitten_id: kitten_id)
        #     end
        # end
        redirect_to person_path(person)
        # byebug
    end

    def edit
        @playdate = Playdate.find(params[:id])
    end

    def update
        @playdate = Playdate.find_by(id: params[:id]) #this is an object
        @playdate.update(playdate_params)
        redirect_to @playdate.person
    end

    def destroy
        @playdate = Playdate.find_by(id: params[:id])
        @playdate.destroy
        redirect_to people_path
    end

    private 
    def playdate_params
        params.require(:playdate).permit(:person_id, :date, :time, :kitten_id)
    end
end
