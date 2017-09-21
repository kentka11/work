class UsersController < ApplicationController

  def show
  	@user = User.find(params[:id])
  end
  
  def new
  	@user = User.new(params[:user])
  	if @user.save
  		flash[:success] = "Welcome to 柿本勤怠システム"
  	  	redirect_to @user
  	else
  	  	render 'new'
  	end
  end

  private 
  def user_params
    params.require(:user).permit(:enterprise_id,:name, :email, :password ,:password_comfirmation)
  end

end
