class UsersController < ApplicationController
  
  before_action :check_login, except: [:new, :create]
  
  def new
    @user = User.new
  end

  def edit
    @user = current_user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to home_path
    else
      render :action => "new"
    end
  end

  def update
    @user = current_user
    if @user.update_attributes(user_params)
      redirect_to home_path
    else
      render :action => "edit"
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :grad_year)
  end

end