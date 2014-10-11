require 'takeaway'

describe Takeaway do

	let(:restaurant) 	{ Takeaway.new }
	let(:dish) 			{ double :dish }
	
	it "should have a list with dishes and their prices" do
		expect(restaurant.list_of_dishes).to match Array
	end

	it "should be able to add dishes to the list" do 
		expect(restaurant.add(dish)).to eq [dish]
	end

	it "should be able to delete dishes from the list" do 
		restaurant.add(dish)
		expect(restaurant.remove(dish)).to eq []
	end

end