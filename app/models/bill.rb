class Bill < ActiveRecord::Base

	belongs_to :creator,
		class_name: "User"

	has_many :user_bills

	has_many :owing_people,
		through: :user_bills,
		source: :user

	has_many :comments, as: :commentable

	validates_presence_of :title, :description, :creator_id, :cost
	


end
