require_relative "../spec_helper"

describe User do
  describe "#name" do
  	it "Should return the user's name" do
  		user = User.create(:first_name => "Unicorn", :email => "hey@yay.com", :phone_number => "123-456-7890", :password_hash => "hithere")
  		expect(user.first_name).to eq "Unicorn"
  	end
  end
end
