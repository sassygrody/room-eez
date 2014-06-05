class Bill < ActiveRecord::Base

	belongs_to :creator,
		class_name: "User"

	has_many :bill_participations

	has_many :debtors,
		through: :bill_participations,
		source: :user

	has_many :comments, as: :commentable

	validates_presence_of :title, :description, :creator_id, :cost
	


end
