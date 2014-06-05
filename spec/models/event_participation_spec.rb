require 'spec_helper'

describe EventParticipation do
  let(:participant) {EventParticipation.new(
  	:user_id => 1,
  	:event_id => 1
  	)}

	describe 'participant' do
		it "Should be an instance of EventParticipation" do
	  		expect(participant).to be_a EventParticipation
	  	end	
		it { should belong_to(:user) }
		it { should belong_to(:event) }
	end
end 
