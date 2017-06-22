class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    @user = User.find_by_credentials(params[:user][:user_name], params[:user][:password])
    if @user.nil?
      flash.now[:errors] = ["Invalid Username or Password"]
      render new_session_url
    else
      @user.reset_session_token!
      session[:session_token] = @user.session_token
      redirect_to cats_url
    end
  end

  def destroy
    logout!
    redirect_to cats_url
  end
end
