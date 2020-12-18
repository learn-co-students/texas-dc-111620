class SessionsController < ApplicationController
    def new
        @user = User.new
    end 

    def create 
        # find the email 
        @user = User.find_by(email: params[:user][:email])
        # if email exists AND if password matches, 
        if @user && @user.authenticate(params[:user][:password])
            # log them in 
            session[:id] = @user.id
            redirect_to user_path(@user) 
        # else
        else
        # redirect_to  login_path
        flash[:errors] = ['Email or password is incorrect']
        redirect_to  login_path
        end
    end

    def destroy
        session.clear
        redirect_to login_path
    end
end
