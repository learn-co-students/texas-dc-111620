class ApplicationController < ActionController::API
   
    def logged_in?
        headers = request.headers["Authorization"] # "Bearer token"
        token = headers.split(" ")[1]
        user_id = JWT.decode(token, "TexasDC")[0]["user_id"]
        user = User.find(user_id)
        if user
            user
        else
            user = nil
        end
        render json:{error: "please login"} unless user
    end
end
