class User < ActiveRecord::Base
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
