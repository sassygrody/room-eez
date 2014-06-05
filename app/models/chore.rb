class Chore < ActiveRecord::Base

	belongs_to :creator,
		class_name: "User"

	has_many :chore_masters

	has_many :chore_doers,
		through: :chore_masters,
		source: :user

	validates_presence_of :name, :happen_at

end
