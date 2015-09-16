class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    user = User.find_by_username(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to home_path, notice: "Logged In"
    else
      flash.now.alert = "Email or Password Invalid"
      render "new"
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged Out"
  end
  
end