class Chore < ActiveRecord::Base

	belongs_to :creator,
		class_name: "User"

	has_many :chore_participations, dependent: :destroy

	has_many :chore_doers,
		through: :chore_participations,
		source: :user
	has_many :comments, as: :commentable

	validates_presence_of :name, :happen_at

end