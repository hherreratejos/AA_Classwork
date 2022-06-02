class UsersController < ApplicationController
    def new
        @user = User.new
        render :new
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            debugger
            login!(@user)
            redirect_to cats_url
        else
            debugger
          render :new
        end
    end

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
