class SessionsController < ApplicationController
    before_action :authorized, except: [:new, :create]
    before_action :current_user, except: [:new, :create]

    def new 

    end

    def create 
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id 
            redirect_to @user
        else  

            if @user === nil 
                flash[:message]= "User could not be found"
            else
                flash[:message]= "Incorrect Password"
            end
            redirect_to home_path
        end
    end

    def destroy
        session[:user_id] = nil 
        flash[:message] = "Successfully logged out!"
        redirect_to home_path
    end
end
