class UsersController < ApplicationController
  # include ApplicationHelper
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
      @bills = Bill.all.order('created_at DESC')
      @chores = Chore.all.order('created_at DESC')
      @events = Event.all.order('created_at DESC')
      @event = Event.new
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
