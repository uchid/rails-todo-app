class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      remember user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_to workspaces_path 
    else
      flash.now[:danger] = "Login failed. Either the email or password is invalid."
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end

end
