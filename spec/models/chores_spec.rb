require "spec_helper"

describe Chore do
	before do 
		user = User.create(:first_name => "Cthulu", :last_name => "uweigker", :email => "cthulu@wow.com", password: => "password", :phone_number => "312-666-6666")
		chore = Chore.new(:name => "Laundry", :description => "Clean my clothes", :happen_date => Time.now, :creator_id => user.id)
	end

	describe "#name" do
		it "should return the chore name" do
			expect(chore.name).to eq "Laundry"
		end
	end

	describe "#description" do
		it "should return the chore description" do
			expect(chore.description).to eq "Clean my clothes"
		end
	end

	describe "#happen_date" do
		it "should be a time" do
			expect(chore.happen_date).to be_a_kind_of(Time)
		end
	end

	describe "#creator_id" do
		it "should be an integer" do 
			expect(chore.creator_id).to eq user.id 
		end
	end

end
