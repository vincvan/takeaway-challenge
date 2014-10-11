class Order

	attr_reader :dishes

	def initialize
		@dishes = []
	end

	def add_dish_from(menu, dish_number, quantity)
		quantity.times {@dishes << menu.menu[dish_number]}
	end

	def total_costs
		total = @dishes.map {|dish| dish.price}.inject(:+)
		total
	end
end