class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_prams)
    if @user.save
      reset_session
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = user.find(params[:id])
    if @user.update(user_prams)
      # Handle a successful update
    else
      render 'edit'
    end
  end

  private

  def user_prams
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
