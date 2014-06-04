require_relative "../spec_helper"

describe User do

  describe '#first_name' do
  	it "Should return the user's first name" do
	  	user = User.create(:first_name => "Unicorn", :last_name => "Magic", :email => "hey@yay.com", :phone_number => "123-456-7890", :password_hash => "hithere")
	  	expect(user.first_name).to eq "Unicorn"
	  end
  end

  describe '#last_name' do
  	it "Should return the user's first name" do
	  	user = User.create(:first_name => "Unicorn", :last_name => "Magic", :email => "hey@yay.com", :phone_number => "123-456-7890", :password_hash => "hithere")
	  	expect(user.last_name).to eq "Unicorn"
	  end
  end

  describe "#name" do
  	it "Should return the user's name" do
  		user = User.create(:first_name => "Unicorn", :last_name => "Magic" :email => "hey@yay.com", :phone_number => "123-456-7890", :password_hash => "hithere")
  		expect(user.name).to eq "Unicorn Magic"
  	end
  end

end
