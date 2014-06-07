class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # @id = session[:id]
  # @user = User.find_by_id(@id)

  protect_from_forgery with: :exception
end
