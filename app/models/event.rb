class Event < ActiveRecord::Base

	belongs_to :creator,
		class_name: "User"

	has_many :participants

	has_many :participating_people,
		through: :participants,
		source: :user

	validates_presence_of :name, :happen_at

	# has_many :participants, class_name: "User" ?
end
