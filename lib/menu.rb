class Menu

	attr_accessor :menu

	def initialize
		@menu
	end

	def create_menu(takeaway)
		@menu = Hash[(1...takeaway.list_of_dishes.size + 1).zip takeaway.list_of_dishes]
	end
end