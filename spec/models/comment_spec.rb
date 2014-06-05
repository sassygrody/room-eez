require 'spec_helper'

describe Comment do

	context "should have columns" do
		it{ should have_db_column(:author_id)}
		it{ should have_db_column(:content)}
		it{ should have_db_column(:commentable_type) }
		it{ should have_db_column(:commentable_id) }

	end

	context "should have associations belonging to" do
		it{ should belong_to(:event) }
		it{ should belong_to(:chore) }
		it{ should belong_to(:bills) }
		it{ should belong_to(:author) }
	end
end
