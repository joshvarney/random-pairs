require "minitest/autorun"
require_relative "random_pairs.rb"
class Test_Random_pairs < Minitest::Test

	
	def test_that_names_array_returns_array
		assert_equal(Array, names_array("josh").class)
	end
	def test_that_my_names_array_returns_with_name_in_array
		assert_equal(["josh"], names_array("josh"))
	end
	def test_that_my_names_array_puts_all_names_into_array
		assert_equal(["josh", "john", "kevin", "nick"], names_array("josh", "john", "kevin", "nick"))
	end
	def test_that_can_randomize_names_array
		names = "josh", "john", "kevin", "nick"
		assert_equal(Array, randomized_array(names).class)
	end 
	def test_that_can_randomize_names_array
		names = "josh", "john", "kevin", "nick"
		refute_equal(["josh", "john", "kevin", "nick"], randomized_array(names))
	end 
	# def test_that_can_group_in_pairs_without_random_on
	# 	names = "josh", "john", "kevin", "nick"
	# 	assert_equal([["josh", "john"],["kevin", "nick"]], randomized_array(names))
	# end
	# def test_that_will_group_together_more_names_without_random_on
	# 	names = "josh", "john", "kevin", "nick", "steve", "travis", "trey", "phil"
	# 	assert_equal([["josh", "john"], ["kevin", "nick"], ["steve", "travis"], ["trey", "phil"]], randomized_array(names))
	# end
	# def test_that_will_work_with_odd_number
	# 	names = "josh", "john", "kevin", "nick", "steve"
	# 	assert_equal([["josh", "john"],["kevin", "nick"], ["steve"]], randomized_array(names))
	# end
	def test_that_can_return_correct_amount_of_arrays_inside_arrays_with_even_elements
		names = "josh", "john", "kevin", "nick"
		assert_equal(2, randomized_array(names).count)
	end
	def test_that_can_randomize_and_return_correct_number_of_arrays_inside_array
		names = "josh", "john", "kevin", "nick", "steve"
		assert_equal(3, randomized_array(names).count)
	end
	def test_that_can_handle_larger_number_with_random
		names = "josh", "john", "kevin", "nick", "steve", "travis", "trey", "phil"
		assert_equal(4, randomized_array(names).count)
	end
	def test_that_returns_two_elements_in_sub_arrays
		names = "josh", "john", "kevin", "nick"
		assert_equal(2, randomized_array(names)[0][0..-1].count)
	end
	def test_that_returns_right_number_of_elements_for_odd_number
		names =  "josh", "john", "kevin", "nick", "steve", "travis", "trey", "phil", "jaxon"
		assert_equal(2, randomized_array(names)[0][0..-1].count)
	end
	def test_that_returns_1_on_last_array_if_odd_number_of_names
		names = "josh", "john", "kevin", "nick", "steve", "travis", "trey", "phil", "jaxon"
		assert_equal(1, randomized_array(names)[-1][0..-1].count)
	end

end 