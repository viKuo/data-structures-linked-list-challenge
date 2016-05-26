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
		end
	end

	def insert_last(element)
		if @linked_list == nil
			@linked_list = Node.new(element)
			@current_node = @linked_list
		else
			head_holder = @linked_list
			(size-1).times { @linked_list = @linked_list.next_node }
			@linked_list.next_node = Node.new(element)
			@linked_list = head_holder
			@current_node = @linked_list
		end
	end

	def remove_last
		if (@linked_list.next_node != nil)
			head_holder = @linked_list
			(size-2).times { @linked_list = @linked_list.next_node }
			@linked_list.next_node = nil
			@linked_list = head_holder
			@current_node = @linked_list
		else
			@linked_list = nil
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
		@current_node = @linked_list
		while @current_node.next_node != nil
			next_node
			i += 1
		end
		i
	end

	def all
		array = []
		head_holder = @linked_list
		size.times do
			array << @linked_list.element
			@linked_list = @linked_list.next_node
		end
		@linked_list = head_holder
		array
	end
end