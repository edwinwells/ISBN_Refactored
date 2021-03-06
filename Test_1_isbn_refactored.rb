require "minitest/autorun"
require_relative "isbn_refactored.rb"

class Testvalidisbn < Minitest::Test


	def test_that_if_x_present_it_is_only_allowed_at_index_10
		isbn_string="0123456X87"
		assert_equal(false,remove_unwanted(isbn_string))
	end

	# def test_again_that_if_x_present_it_is_only_allowed_at_index_9
	# 	refreshed=["0","1","2","3","4","5","6","7","8","X"]
	# 	assert_equal(true,check_x(refreshed))
	# end
	# def test_to_verify_validity_first_false_number
	# 	refreshed=["0","-","6","6","5","8","6","*","7","x"]
	# 	assert_equal(true,check_the_sum(refreshed))
	# end

	# def test_to_verify_validity_second_false_number
	# 	refreshed=["7","4","2","1","3","9","4","7","6","5"]
	# 	assert_equal(false,check_the_sum(refreshed))
	# end

	# def test_to_verify_validity_true_number
	# 	refreshed=["7","4","2","1","3","9","4","7","6","1"]
	# 	assert_equal(true,check_the_sum(refreshed))
	# end

#************************************************************
	# def test_if_check_count_returns_true_when_there_are_10_letters
	# 	letters=["x","s","d","e","f","d","k","u","p","r"]
	# 	assert_equal(true,check_count(letters))
	# end

	# def test_if_check_count_returns_false_if_there_are_not_10_letters
	# 	letters=["x","s"]
	# 	assert_equal(false,check_count(letters))
	# end
#**************************************************************
	# def test_if_check_x_returns_false_if_x_not_at_index_9
	# 	letters=["x","s","d","e","f","d","k","u","p","r"]
	# 	assert_equal(false,check_x(letters))
	# end

	# def test_if_check_x_returns_true_if_x_at_index_9
	# 	letters=["a","s","d","e","f","d","k","u","p","x"]
	# 	assert_equal(true,check_x(letters))
	# end

	# def test_if_check_x_returns_false_if_not_ten_digits_present
	# 	letters=["x","s"]
	# 	assert_equal(false,check_x(letters))
	# end	

	# def test_to_verify_invalidity_false_number
	# 	refreshed=["7","4","d","1","3","e","4","7","6","1"]
	# 	assert_equal(false,check_the_sum(refreshed))
	# end	
end