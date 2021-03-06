class UsersController < ApplicationController
  
  def index
    @user = User.all   
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "success"
      log_in @user
      redirect_to workspaces_path
    else
      flash[:info] = "failed"
      render "new"
    end
  end

  def edit
  end

  private

   def user_params
     params.require(:user).permit(:name, :email, :password, :password_confirmaition)
   end
end
