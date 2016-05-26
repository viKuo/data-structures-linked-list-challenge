require_relative 'node'

class LinkedList
	def initialize 
		@linked_list = nil
	end

	def insert_first(element)
		if (@linked_list == nil)
			@linked_list = Node.new(element)
			@current_node = @linked_list
		else
			new_node = Node.new(element)
			new_node.insert_after(@linked_list)
			@linked_list = new_node
			@current_node = @linked_list
		end
	end

	def remove_first 
		if (@linked_list.next_node != nil)
			@linked_list = @linked_list.next_node
			@current_node = @linked_list
		else
			@linked_list = nil
			@current_node = @linked_list
		end
	end

	def insert_last(element)
		if @linked_list == nil
			@linked_list = Node.new(element)
			@current_node = @linked_list
		else
			cursor = @linked_list
			(size-1).times { cursor = cursor.next_node }
			cursor.next_node = Node.new(element)
			@current_node = @linked_list
		end
	end

	def remove_last
		if (@linked_list.next_node != nil)
			cursor = @linked_list
			(size-2).times { cursor = cursor.next_node }
			cursor.next_node = nil
			@current_node = @linked_list
		else
			@linked_list = nil
			@current_node = @linked_list
		end
	end

	def element
		@current_node.element
	end

	def next_node
		@current_node = @current_node.next_node
	end

	def size
		return 0 if @linked_list == nil
		i = 1
		cursor = @linked_list
		while cursor.next_node != nil
			next_node
			i += 1
		end
		i
	end

	def all
		array = []
		cursor = @linked_list
		size.times do
			array << cursor.element
			cursor = cursor.next_node
		end
		array
	end
end

# things to talk about: namespace (next_node in node class and next_node in linked_list is the same)
# rspec: how to use let so that there's not as much repetitive code