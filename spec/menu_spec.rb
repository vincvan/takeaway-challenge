require 'menu'

describe Menu do

	let(:lunch_menu) { Menu.new }
	let(:salad) { double :dish, name: "salad", price: 6 }
	let(:burger) { double :dish, name: "burger", price: 8 }
	let(:restaurant) {double :takeaway, list_of_dishes: [salad,burger] }

	it "can create a indexed menu out of the list of dishes" do 
		expect(lunch_menu.create_menu(restaurant)).to eq({1 => salad, 2 => burger})
	end

	it "stores the menu in an instance variable" do 
		lunch_menu.create_menu(restaurant)
		expect(lunch_menu.menu).to eq({1 => salad, 2 => burger})
	end
end