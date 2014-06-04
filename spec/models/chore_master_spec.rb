require 'spec_helper'

describe ChoreMaster do
	it { should belong_to(:user) }
	it { should belong_to(:chore) }
end
