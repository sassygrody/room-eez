class User < ActiveRecord::Base

	has_many :created_chores,
		class_name: "Chore",
		foreign_key: :creator_id

	has_many :chore_masters

	has_many :chores, 
		through: :chore_masters,
		foreign_key: :chore_doers_id

	has_many :created_events,
		class_name: "Event",
		foreign_key: :creator_id

	has_many :participants

	has_many :events, 
		through: :participants,
		foreign_key: :participating_people_id


	has_many :created_bills,
		class_name: "Bill",
		foreign_key: :creator_id

	has_many :user_bills

	has_many :bills, 
		through: :user_bills,
		foreign_key: :owing_people_id

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
