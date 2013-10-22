class DogsController < ApplicationController
  before_action :current_user
  def index
    @dogs = Dog.all
    render :index
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    if @dog.save
      redirect_to dogs_path
    else
      render :new
    end
  end


  def show
    @dog = Dog.find(params[:id])
  end

private

  def dog_params
    params.require(:dog).permit(:name, :age, :breed, :gender, :preference, :user_id)
  end
end
