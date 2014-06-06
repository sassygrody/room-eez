class SessionsController < ApplicationController

	def create
  	user = User.find_by(email: params[:session][:email]).try(:authenticate, params[:session][:password])
  	if user
  		session[:user_id] = user.id
  		redirect_to '/'
  	end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

end
