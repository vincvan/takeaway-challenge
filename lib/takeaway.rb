require './lib/order'
require './lib/menu'
require './lib/dishes'


class Takeaway

	attr_accessor :list_of_dishes, :menu

	def initialize
		@list_of_dishes = []
		@menu
	end

	def add(dish)
		list_of_dishes << dish
	end

	def remove(dish)
		@list_of_dishes.delete(dish)
		@list_of_dishes
	end
end	