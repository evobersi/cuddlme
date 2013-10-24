class UsersController < ApplicationController

  before_action :authenticated!, :set_user, :authorized!, only: [:destroy, :edit, :update]
  before_action :authenticated!, :set_user, only: [:show]

  def index
  end

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      log_in!(@user)
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    if @user.id == session[:user_id] 
      render :show 
    else 
      render :profile
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    if @user.destroy
      redirect_to new_user_path
    else
      render :edit
    end
  end

  def visit_park
    User.find(@current_user.id).parks << parks 
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :zipcode)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def authorized!
    unless @user.id == session[:user_id]
      redirect_to user_path(session[:user_id])
    end
  end
end