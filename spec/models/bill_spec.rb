require 'spec_helper'

describe Bill do
	let(:bill) {Bill.new(:title => 'Utilities',
											 :description => 'For June',
											 :creator_id => 1,
											 :cost => 35)}

	describe "bill" do
		it 'should be an instance of a Bill object' do
			expect(bill).to be_a Bill
		end 
	end 

	describe "#title" do
		it 'should return the bill title' do
			expect(bill.title).to eq "Utilities"
		end 
	end 

	describe "#description" do
		it 'should return the bill description' do
			expect(bill.description).to eq "For June"
		end 
	end 

	describe "#creator_id" do
		it 'should return the bill creator ID' do
			expect(bill.creator_id).to eq 1
		end
	end

	describe "#cost" do
		it 'should return the bill cost' do
			expect(bill.cost).to eq 35
		end
	end	 

	describe "#cost_to_float" do
		it 'should return the cost as a float' do
			expect(bill.cost_to_float).to eq 35.00
		end
		it 'check to see if cost is a float' do
			expect(bill.cost.class).to eq Float
		end
	end 

	context "validates presence of" do
		it {bill.should validate_presence_of(:title)}
		it {bill.should validate_presence_of(:description)}
		it {bill.should validate_presence_of(:creator_id)}
		it {bill.should validate_presence_of(:cost)}
	end






end
