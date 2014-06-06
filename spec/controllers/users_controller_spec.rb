require 'spec_helper'

describe UsersController do
	
	it "should show a new user form page" do
		get :new
		expect(response.status).to eq 200
	end

	it "should post to create a user" do
		post :create, user: {:first_name => "Unicorn", :last_name => "Magic", :email => "hey@yay.com", :phone_number => "123-456-7890", :password => "hithere"}
		expect(response.status).to eq 302
	end

	it "should get a user page" do
		user = User.create(:first_name => "Unicorn", :last_name => "Magic", :email => "hey@yay.com", :phone_number => "123-456-7890", :password => "hithere")
		get :show, id: user.id
		
		expect(response.status).to eq 200
	end

end
