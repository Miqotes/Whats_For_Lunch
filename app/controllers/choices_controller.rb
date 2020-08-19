class ChoicesController < ApplicationController
    before_action :authorized
    before_action :current_user
    def new 
        @choice = Choice.new
    end

    def create 
        @choice = Choice.new(choice_params)
        @choice.user_id = session[:user_id]
        if @choice.save 
            redirect_to category_path(@choice)
        else 
            render 'new'
        end
    end

    def edit 

    end
    private
    def choice_params
        params.require(:choice).permit(:preference,:user_id,:category_id)
    end
end