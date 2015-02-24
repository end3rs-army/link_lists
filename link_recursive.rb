class Node

	attr_reader :node_name
	attr_accessor :next_node

	def initialize(name)
		@node_name = name
		#@next_node = nil
	end
end

class ListRecursive

	attr_accessor :head, :node

	def initialize

		@head = nil
	end

	def add_node(name, node_object = @head)
		if head.nil?
			@head = Node.new(name)
			@node = @head
		elsif node_object.next_node
			add_node(name, node_object.next_node)
		else
			node_object.next_node = Node.new(name)
		end
	end

	def count(node_object = @head, count = 0)
		if node_object.nil?
			count
		elsif node_object.next_node
			count += 1
			count(node_object.next_node,count)
		elsif node_object.next_node.nil?
			count += 1
		end
	end

	def print_node(node_object = @head)
		if @head == nil
			nil
		elsif node_object.next_node
			puts node_object.node_name
			print_node(node_object.next_node)
		else
			puts node_object.node_name
		end
	end

	def access_last_node(node_object = @head)
		if @head == nil
			nil
		elsif node_object.next_node
			access_last_node(node_object.next_node)
		else
			node_object
		end
	end

	def pop_node(node_object = @head)
		if @head == nil
			return nil
		elsif @head.next_node == nil
			return @head = nil
		elsif node_object.next_node.next_node
			pop_node(node_object.next_node)
		else
			node_object.next_node.next_node = nil
		end
		node_object.next_node.node_name
	end
	
	def push_head(name,node_object = @head)
		if @head == nil
			return nil
		else
			previous = @head
			@head = Node.new(name)
			@head.next_node = previous
		end
	end		

end 

link = ListRecursive.new

link.add_node("Eric")

link.push_head("Tony")

link.push_head("Tony")

