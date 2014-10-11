require 'order'

describe Order do
	let(:order) { Order.new }
	let(:salad) { double :dish, name: "salad", price: 6 }
	let(:burger) { double :dish, name: "burger", price: 8 }
	let(:menu) {double :menu, menu: {1 => salad, 2 => burger} }

	it "has no dishes at creation" do 
		expect(order.dishes).to be_empty
	end

	it "can add dishes from the menu to the order" do 
		order.add_dish_from(menu, 1, 1)
		expect(order.dishes).to eq [salad]
	end

	it "can calculate the total costs of the order" do
		order.add_dish_from(menu, 1, 1)
		order.add_dish_from(menu, 2, 1)
		expect(order.total_costs).to eq 14 
	end
end