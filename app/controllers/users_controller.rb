class UsersController < ApplicationController
  include UserHelper
	def new
		@user = User.new
	end

	def create
    @user = User.new(user_params)
    @user.save
    p @user
    redirect_to user_path(@user.id)
  end

  def show
    if current_user
      @user = User.find(params[:id])
      @bills = @user.bills	
      @chores = @user.chores
      @events = @user.events
    else
      redirect_to root
    end
  end

  private
    def user_params
      params.require(:user).permit(:first_name,
      	:last_name,
      	:email,
      	:password,
      	:phone_number)
    end
	
end
