require "minitest/autorun"
require_relative "random_pairs.rb"
class Test_Random_pairs < Minitest::Test

	
	def test_that_names_array_returns_array
		assert_equal(Array, names_array("josh").class)
	end
	def test_that_my_names_array_returns_with_name_in_array
		assert_equal(["josh"], names_array("josh"))
	end


end 