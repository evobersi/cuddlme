class UsersController < ApplicationController
  before_action :authenticated!, :set_user, :authorized!, only: [:destroy, :edit, :update]
  before_action :authenticated!, :set_user, only: [:show]
  WillPaginate.per_page = 9
  respond_to :html, :json
  def root
    render :new
  end

  def index
    @users = User.all
    @users = User.paginate(:page => params[:page])
    render :index
  end

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in!(@user)
      redirect_to new_dog_path, notice: "Successfully created user!"
    else
      render :new
    end
  end

  def show
    @user = User.find params[:id]
    respond_to do |format|
      format.html
      format.json {render :json => @user}
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  @user = User.find params[:id]

    respond_to do |format|
      if @user.update_attributes(user_params)
        format.html { redirect_to(@user, :notice => 'User was successfully updated.') }
        format.json { respond_with_bip(@user) }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @user.errors.full_messages, :status => :unprocessable_entity }
      end
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
    params.require(:user).permit(:email, :password, :password_confirmation, :zipcode, :name, :tagline, :avatar)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def authorized!
    unless current_user.id == session[:user_id]
      redirect_to user_path(session[:user_id])
    end
  end
end