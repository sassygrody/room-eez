class Event < ActiveRecord::Base

	belongs_to :creator,
		class_name: "User"

	has_many :event_participations

	has_many :attendees,
		through: :event_participations,
		source: :user

	has_many :comments, as: :commentable

	validates_presence_of :name, :happen_at

end
