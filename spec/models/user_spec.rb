require_relative "../spec_helper"

describe User do
	let(:user) {User.new(:first_name => "Unicorn",
        :last_name => "Magic",
        :email => "hey@yay.com",
        :phone_number => "123-456-7890",
        :password_hash => "hithere"
      )}

  describe '#first_name' do
  	it "Should return the user's first name" do
	  	expect(user.first_name).to eq "Unicorn"
	  end
  end

  describe '#last_name' do
  	it "Should return the user's last name" do
	  	expect(user.last_name).to eq "Magic"
	  end
  end

  describe "#name" do
  	it "Should return the user's name" do
  		expect(user.name).to eq "Unicorn Magic"
  	end
  end
 
 	describe '#email' do
 		it "Should return the user's email" do
 			expect(user.email).to eq "hey@yay.com"
 		end
 	end
end


