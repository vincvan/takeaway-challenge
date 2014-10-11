require 'twilio-ruby'

class Takeaway

	attr_accessor :list_of_dishes

	def initialize
		@list_of_dishes = []
		@menu = nil
	end

	def add(dish)
		list_of_dishes << dish
	end

	def remove(dish)
		list_of_dishes.delete(dish)
		@list_of_dishes
	end
end