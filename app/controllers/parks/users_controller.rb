class Parks::UsersController < ApplicationController
  def create
    park = Park.find(params[:park_id])
    current_user.parks << park
    redirect_to park_path(park)
  end
end