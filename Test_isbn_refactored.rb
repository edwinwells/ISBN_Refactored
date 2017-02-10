require "minitest/autorun"
require_relative "isbn_refactored.rb"

class Testvalidisbn < Minitest::Test

	def test_nothing_present_except_integers_true
		isbn_string="0123456789"
		assert_equal(true,remove_unwanted(isbn_string))
	end

	def test_nothing_present_except_integers_false
		isbn_string="012B3"
		assert_equal(false,remove_unwanted(isbn_string))
	end

	def test_nothing_present_except_integers_or_x_true
		isbn_string="012X37898x"
		assert_equal(true,remove_unwanted(isbn_string))
	end


	def test_that_10_digits_only_are_present
		refreshed=["1", "1", "1","1","1","1","1","1","1","1"]
		assert_equal(true, check_count(refreshed))
	end

	def test_that_if_x_present_it_is_only_allowed_at_index_10
		refreshed=["0","1","2","3","4","5","6","X","8","7"]
		assert_equal(false,check_x(refreshed))
	end

	def test_again_that_if_x_present_it_is_only_allowed_at_index_10
		refreshed=["0","1","2","3","4","5","6","7","8","X"]
		assert_equal(true,check_x(refreshed))
	end
	def test_to_verify_validity_first_false_number
		refreshed=["0","-","6","6","5","8","6","*","7","x","8","4"]
		assert_equal(true,check_the_sum(refreshed))
	end

	def test_to_verify_validity_second_false_number
		refreshed=["7","4","2","1","3","9","4","7","6","5"]
		assert_equal(false,check_the_sum(refreshed))
	end

	def test_to_verify_validity_true_number
		refreshed=["7","4","2","1","3","9","4","7","6","1"]
		assert_equal(true,check_the_sum(refreshed))
	end

	def test_if_check_count_returns_true_when_there_are_10_letters
		letters=["x","s","d","e","f","d","k","u","p","r"]
		assert_equal(true,check_count(letters))
	end

	def test_if_check_count_returns_false_if_there_are_not_10_letters
		letters=["x","s"]
		assert_equal(false,check_count(letters))
	end

	def test_if_check_x_returns_false_if_x_not_at_index_9
		letters=["x","s","d","e","f","d","k","u","p","r"]
		assert_equal(false,check_x(letters))
	end

	def test_if_check_x_returns_true_if_x_at_index_9
		letters=["a","s","d","e","f","d","k","u","p","x"]
		assert_equal(true,check_x(letters))
	end

	def test_if_check_x_returns_false_if_not_ten_digits_present
		letters=["a","s"]
		assert_equal(false,check_x(letters))
	end	
end