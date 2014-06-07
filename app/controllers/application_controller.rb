class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # @id = session[:id]
  @user = User.find_by_id(@id)

  	def current_user
		@user ||= User.find_by_id(session[:user_id])
	end

  # protect_from_forgery with: :exception
  protect_from_forgery with: :null_session
end
