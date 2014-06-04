class Bill < ActiveRecord::Base

	validates_presence_of :title, :description, :creator_id, :cost

	def cost_to_float
		self.cost = self.cost.to_f.round(2)
	end 


end
