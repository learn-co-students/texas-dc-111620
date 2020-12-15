class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # recieving user input 
    # create a new user
    # byebug
    @user = User.new(params[:username])
    # if name is not long enough 
    if @user.valid_name?
      session[:username] = @user.username
      session[:score] = 3
      redirect_to "/users/1"


    # return error :eye_emoji: use flash 
    else 
      flash[:errors] = "you MIGHT want to make your usename a little longer"
      redirect_to "/users/new"
    end
  
  end

  def show
    @username = session[:username]
    @score = session[:score]
  end
end