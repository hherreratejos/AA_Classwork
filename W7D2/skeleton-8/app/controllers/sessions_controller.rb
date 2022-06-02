class SessionsController < ApplicationController
  #before_action :require_logged_out, only [:new, :create]
  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
    if @user
        debugger
        # session[:session_token] = @user.reset_session_token!
        login!(@user)
        redirect_to cats_url
    else
        debugger
        render :new
    end
  end

  def destroy
    logout!
    redirect_to new_session_url
  end

end
