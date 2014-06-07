module UserHelper


	# have two of these now. seems a little redundant but it dixes some problems
	def current_user
		@user ||= User.find_by_id(session[:user_id])
	end

end
