class User < ActiveRecord::Base

	has_many :created_chores,
		class_name: "Chore",
		foreign_key: :creator_id

	has_many :chore_participations

	has_many :chores, 
		through: :chore_participations,
		foreign_key: :chore_doers_id

	has_many :created_events,
		class_name: "Event",
		foreign_key: :creator_id


	has_many :event_participations


	has_many :events, 
		through: :event_participations,
		foreign_key: :attendee_id


	has_many :created_bills,
		class_name: "Bill",
		foreign_key: :creator_id

	has_many :bill_participations

	has_many :bills, 
		through: :bill_participations,
		foreign_key: :debtor_id

	has_many :comments, foreign_key: :author_id



  has_secure_password

  validates_uniqueness_of :email
  validates_presence_of :email, :phone_number, :first_name, :last_name
  validates :email, :format => /\A(\S+)@(.+)\.(\S+)\z/
  validates :phone_number, :format => /(1-?)?\(?\d{3}[\)|-]\d{3}-\d{4}/
  validates :password, :length => { :in => 6..20 }


  def name
    "#{self.first_name} #{self.last_name}"
  end
end
