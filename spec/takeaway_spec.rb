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

	it "should know how many kinds of dishes it has on the menu" do
		restaurant.add(dish)
		expect(restaurant.dish_count).to eq 1
	end

	it "should make a hash with number of the dish as a key and the dish as the value" do
		restaurant.add(dish)
		expect(restaurant.create_menu).to eq(1 => dish)
	end

end