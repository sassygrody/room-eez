require 'spec_helper'

describe Event do
	# hard coded in USER_ID, need to get associations working

  let(:event) {Event.new(:name => "Graduation", :description => "Real life approaching", :happen_at => "2 weeks!",:creator_id => 1)}

  
  it {should have_db_column(:name)}
  it {should have_db_column(:description)}
  it {should have_db_column(:happen_at)}
  it {should have_db_column(:creator_id)}


  describe "event" do
		it 'should be an instance of a Event object' do
			expect(event).to be_a Event
		end 
		it { should belong_to(:creator).class_name("User") }

		it { should have_many(:event_participations) }
		it { should have_many(:attendees).through(:event_participations).source(:user) }

		it { should have_many(:comments) }
	end 

 	describe "#name" do
 	  it "returns the name of the event" do
 	  	expect(event.name).to eq "Graduation"
 	  end
 	end
    
 	describe "#description" do 
 		it "returns the description of the event" do 
 			expect(event.description).to eq "Real life approaching"
 		end
 	end

 	describe "#happen_at" do 
 		it "returns the designated event happening time" do
 			expect(event.happen_at).to eq "2 weeks!"
 		end
 	end

 	describe "#creator_id" do
 		it "returns the ID of the person who created the event" do
 			expect(event.creator_id).to eq 1
 		end
 	end

 	context "validates presence of" do
 		# user_id is will be validated added through logic
 		# shouldn't HAVE to include description
 		it { event.should validate_presence_of(:name) }
 		it { event.should validate_presence_of(:happen_at) }

 






        

 	end


end
