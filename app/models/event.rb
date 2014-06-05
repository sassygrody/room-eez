class Event < ActiveRecord::Base
	validates_presence_of :name, :when, :created_at

	# has_many :participants, class_name: "User" ?
end
