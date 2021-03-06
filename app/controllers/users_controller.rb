class UsersController < ApplicationController
    before_action :authorized, except: [:index,:new, :create]
    before_action :current_user, except: [:index, :new, :create]
    

   
    def index
        render :layout => "home"
    end
    def new
        @user = User.new
        render :layout => "home"
    end

    def create 
        @user = User.new(user_params)
        if @user.save 
            session[:user_id] = @user.id
            redirect_to @user
        else
        flash[:errors] = @user.errors.full_messages
        redirect_to signup_path
    end
end

    def show
        @user = User.find(params[:id])
    end

    private 

    def user_params
        params.require(:user).permit(:username, :password)
    end

    
end
