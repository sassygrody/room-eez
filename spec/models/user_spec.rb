require_relative "../spec_helper"

describe User do
	it "Should return the user's name" do
		user = User.create(:name => "Unicorn", :email => "hey@yay.com", :phone_number => "123-456-7890", :password => "hithere")
		expect(user.name).to eq "Unicorn"
	end
end
