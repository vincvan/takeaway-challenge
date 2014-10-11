require 'dishes'

describe Dish do
	let(:dish) { Dish.new("salad", 6) }

	

	it "can be created with a name" do 
		expect(dish.name).to eq "salad"
	end

	it "can be created with a name" do 
		expect(dish.price).to eq 6
	end

end