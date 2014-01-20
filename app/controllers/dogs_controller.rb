class DogsController < ApplicationController
WillPaginate.per_page = 9
before_action :current_user
respond_to :html, :json


  def index
    @dogs = Dog.all
    @dogs = Dog.paginate(:page => params[:page])
    render :index
  end

  def new
    @current_user = current_user
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user = current_user
    if @dog.save
      redirect_to dogs_path
    else
      render :new
    end
  end

  def edit
    @user = current_user
    @dog = Dog.find(params[:id])
  end


def edit
    @user = current_user
  end

  def update
  @user = User.find(params[:id])
  @user.update_attributes!(user_params)
  respond_with @user
  end


  def update 
    @user = current_user
      if @dog.update_attributes(dog_params)
        @dog.save!
        redirect_to dog_path, :alert  => "Successfully updated profile."
    else
      render :edit
    end
  end

  def show
    @dog = Dog.find(params[:id])
  end

private

  def dog_params
    params.require(:dog).permit(:name, :age, :breed, :gender, :preference, :avatar)
  end
end
