require 'spec_helper'

describe ChoreParticipation do
	it { should belong_to(:user) }
	it { should belong_to(:chore) }
end
