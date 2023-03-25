class SessionsController < ApplicationController
    def create
       user = User.find_by(username: params[:username])
       if user
       session[:user_id] = user.id
       end
       render json: user
         
        
    end

    def destroy
        session.delete :user_id
        head :no_content  
    end
end
