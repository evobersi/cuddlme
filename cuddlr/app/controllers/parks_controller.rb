class ParksController < ApplicationController
  def index
    @parks = Park.all
    render :index
  end

  def show
    @user = User.find(session[:user_id])
    @park = Park.find(params[:id])
    render :show
  end

  private

  def park_params
    params.require(:park).permit(:address, :longitude, :latitude)
  end
end
