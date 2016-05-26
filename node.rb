class Node
	attr_accessor :element, :next_node
	def initialize(element)
		@element = element
		@next_node = nil
	end

	def insert_after(other_node)
		@next_node = other_node
	end

	def remove_after()
		@next_node = nil
	end
end
