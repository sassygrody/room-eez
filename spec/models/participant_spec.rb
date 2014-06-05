require 'spec_helper'

describe Participant do
  let(:participant) {Participant.new(
  	:user_id => 1,
  	:event_id => 1
  	)}

	describe 'participant' do
		it "Should be an instance of Participant" do
	  		expect(participant).to be_a Participant
	  	end	
		it { should belong_to(:user) }
		it { should belong_to(:event) }
	end
end 
