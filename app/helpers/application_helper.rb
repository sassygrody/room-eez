module ApplicationHelper

	def current_user
		@user ||= User.find_by_id(session[:user_id])
	end

end


# def cost_to_float
# 	self.cost = self.cost.to_f.round(2)
# end 