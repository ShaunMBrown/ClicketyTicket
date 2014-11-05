class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @events = @user.events
  end
  
  def new
      @user = User.new
      flash.now[:success] = 'User.new!'
  end
  
  def create
    @user = User.new(user_params)
    flash.now[:success] = 'User.new(user_params)!'
    if @user.save
      flash.now[:success] = '@user.save!'
      log_in @user
      #flash[:success] = "Welcome to Clickety Ticket!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  private
  
    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
