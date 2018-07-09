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
		refute_equal(["josh", "john", "kevin", "nick"], randomized_array("josh", "john", "kevin", "nick"))
	end



end 