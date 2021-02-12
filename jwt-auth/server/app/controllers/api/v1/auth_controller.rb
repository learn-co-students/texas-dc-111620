class Api::V1::AuthController < ApplicationController
    #all logic involving auth 
    def log_in
#     fetch('this route')    
#       {name email password}
# 
        #find user with name
        user = User.find_by(name: params[:username])
        #check if password matches 
        if user && user.authenticate(params[:password])
        #return token
            render json: {user: user, token: JWT.encode({user_id: user.id}, "TexasDC")}
        else
            render json: {error: "invalid name or password", status:505}
        end

    end
end
