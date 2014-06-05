class BillParticipation < ActiveRecord::Base
	belongs_to :user
	belongs_to :bill
end
