class SessionsController < ApplicationController
    def new 
        @poop = 4
    end

    def create
        user = User.find_by(username: params[:session][:username])
        if user && user.authenticate(params[:session][:password])
            session[:user_id]= user.id
            flash[:success] = "You have logged in. Enjoy!"
            redirect_to root_path
        else
            flash.now[:error] = "There was something wrong with your login info"
            render 'new'
        end
        

    end
end
