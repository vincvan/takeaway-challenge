require 'takeaway'

describe Takeaway do

	let(:restaurant) 	{ Takeaway.new }
	let(:salad) 		{ double :dish }
	let(:burger) 		{ double :dish }

	
	it "should have a list with dishes and their prices" do
		expect(restaurant.list_of_dishes).to match Array
	end

	it "should be able to add dishes to the list" do 
		expect(restaurant.add(salad)).to eq [salad]
	end

	it "should be able to delete dishes from the list" do 
		restaurant.add(salad)
		expect(restaurant.remove(salad)).to eq []
	end
end