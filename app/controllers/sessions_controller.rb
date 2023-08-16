class SessionsController < ApplicationController
  before_action :authenticate_user, except: %i[new create]

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticated?('password', params[:session][:password])
      log_in(user)
      flash[:notice] = "Login successful"
      redirect_to '/'
    else
      flash[:notice] = "Invalid Email or Password"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Logged Out"
    redirect_to '/login'
  end
end
