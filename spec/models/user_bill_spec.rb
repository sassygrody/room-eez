require 'spec_helper'

describe UserBill do
  let(:userbill) {UserBill.new(
  	:payer_id => 1,
  	:bill_id => 1,
  	:iou => 11.11
  	)}

  describe "userbill" do
  	it "Should be an instance of UserBill" do
  		expect(userbill).to be_a UserBill
  	end	
  end

  describe "#payer_id" do
  	it "Should return the userbill payer id" do
  		expect(userbill.payer_id).to eq 1
  	end
  end

  describe "#bill_id" do
  	it "Should return the userbill bill id" do
  		expect(userbill.bill_id).to eq 1
  	end
  end

  describe "#iou" do
  	it "Should return the iou" do
  		expect(userbill.iou).to eq 11.11
  	end
  	it 'should return the iou as a float' do
  		expect(userbill.iou.class).to eq Float
  	end 
  end


end
