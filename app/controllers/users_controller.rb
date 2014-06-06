class UsersController < ApplicationController
  include UserHelper
	def new
    @errors = params[:errors]
		@user = User.new
	end

	def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(current_user)
    else
      @errors = @user.errors.full_messages
      redirect_to new_user_path(:errors => @errors)
    end
  end

  def show

    if current_user
      @user = User.find(params[:id])
      @bills = @user.bills	
      @chores = @user.chores
      @events = @user.events
    else current_user
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
