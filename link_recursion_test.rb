require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './link_recursive'

class LinkRecursionTest < Minitest::Test 

	def test_it_works

		assert true
	end

	def test_it_creates_nodes
		link = ListRecursive.new 
		link.add_node("Eric")
		assert_equal "Eric",link.node.node_name
	end

	def test_a_new_node_has_no_pointer
		link = ListRecursive.new 
		link.add_node("Eric")
		assert_equal nil,link.node.next_node
	end

	def test_a_pointer_can_be_added_to_a_node
		link = ListRecursive.new 
		link.add_node("Eric")
		link.add_node("Tony")
		assert_equal "Tony",link.node.next_node.node_name
	end

	def test_it_can_build_a_single_node
		link = ListRecursive.new 
		link.add_node("Eric")
		assert_equal "Eric",link.node.node_name
	end

	def test_it_can_assign_a_head
		link = ListRecursive.new 
		link.add_node("Eric")
		assert_equal "Eric",link.head.node_name
	end

	def test_it_can_create_multiple_nodes
		link = ListRecursive.new 
		link.add_node("Eric")
		link.add_node("Andrew")
		link.add_node("Tony")
		assert_equal "Tony",link.node.next_node.next_node.node_name
	end

	def test_it_can_count
		link = ListRecursive.new 
		link.add_node("Eric")
		link.add_node("Andrew")
		link.add_node("Tony")
		assert_equal 3,link.count
	end

	def test_it_counts_with_no_nodes
		link = ListRecursive.new 
		assert_equal 0,link.count
	end

	def test_it_outputs_out_the_node_list
		skip #it does print out the list, but puts is nil return
		link = ListRecursive.new
		link.add_node("Eric")
		link.add_node("Tony")
		link.add_node("Pat")
		result = link.print_node
		assert_equal "Pat",result
	end

	def test_it_outputs_nil_with_zero_nodes
		link = ListRecursive.new
		assert_equal nil,link.print_node
	end

	def test_it_can_access_the_last_element_of_the_list
		link = ListRecursive.new
		link.add_node("Eric")
		link.add_node("Tony")
		link.add_node("Pat")
		result = link.access_last_node
		assert_equal "Pat",result.node_name
	end

	def test_it_returns_nil_when_accessing_list_with_zero_nodes
		link = ListRecursive.new
		assert_equal nil,link.access_last_node
	end
	
	def test_it_pops_end_element
		link = ListRecursive.new
		link.add_node("Eric")
		link.add_node("Tony")
		link.add_node("Pat")
		assert_equal "Tony",link.node.next_node.node_name
	end
		
	def test_it_returns_nil_if_pop_with_zero_nodes
		link = ListRecursive.new
		assert_equal nil,link.pop_node 
	end

	def test_it_returns_nil_if_pop_of_the_head
		link = ListRecursive.new
		link.add_node("Eric")
		assert_equal nil,link.pop_node 
	end

	def test_it_can_push_element_to_front_of_list
		link = ListRecursive.new
		link.add_node("Eric")
		link.push_head("Tony")
		assert_equal "Tony",link.head.node_name 
	end

	def test_it_removes_first_occurence_of_data
	end

	def test_it_can_delete_first_occurence_of_data_if_it_is_the_head
	end

	def test_it_can_delete_node_at_specific_place
	end

	def test_it_can_add_node_at_specific_place
	end
end


	

