class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    # authenticate that user/pass combo is legit
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      log_in!(user)
      redirect_to user_path(user)
    else
      flash.now[:error] = 'Invalid email/password combination'
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to(new_session_path)
  end
end

