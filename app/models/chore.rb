class Chore < ActiveRecord::Base
	validates_presence_of :name, :happen_at

end
