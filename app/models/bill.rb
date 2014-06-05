class Bill < ActiveRecord::Base

	validates_presence_of :title, :description, :creator_id, :cost
	


end
