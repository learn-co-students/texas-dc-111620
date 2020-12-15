class GamesController < ApplicationController
  def create
    # byebug
    answer = params[:name] #holding input 
    if answer.downcase == 'beyonce'
      # we win 
      # score increment
      session[:score] += 1
      flash[:correct] = "Good job! You said her name!"

    else
      # we lose
      # score decrement
      session[:score] -= 1
      flash[:wrong] = "bad job! how do you NOT know her name!"
    end

    redirect_to "/users/1"
  end
end
