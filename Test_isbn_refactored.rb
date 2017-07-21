require "minitest/autorun"
require_relative "isbn_refactored.rb"

class Testvalidisbn < Minitest::Test

	def test_less_than_ten_digits_returns_false
		isbn_string="71"
		assert_equal(false,remove_unwanted(isbn_string))
	end

	def test_valid_10_digit_ISBN_returns_true
		isbn_string="7421394761"
		assert_equal(true,remove_unwanted(isbn_string))
	end

	def test_invalid_10_digit_ISBN_returns_false
		isbn_string="7483394769"
		assert_equal(false,remove_unwanted(isbn_string))
	end

	def test_valid_10_digit_ISBN_with_x_at_index_10_returns_true
		isbn_string="877195869x"
		assert_equal(true,remove_unwanted(isbn_string))
	end

	def test_invalid_10_digit_ISBN_with_x_not_at_index_10_returns_false
		isbn_string="8771x5869x"
		assert_equal(false,remove_unwanted(isbn_string))
	end

	def test_valid_13_digit_ISBN_returns_true
		isbn_string="9780470059029"
		assert_equal(true,remove_unwanted(isbn_string))
	end
 
 	def test_valid_13_digit_ISBN_with_dashes_returns_true
		isbn_string="978-0-13-149505-0"
		assert_equal(true,remove_unwanted(isbn_string))
	end

 	def test_valid_13_digit_ISBN_with_spaces_returns_true
		isbn_string="978 0 471 48648 0"
		assert_equal(true,remove_unwanted(isbn_string))
	end

 	def test_invalid_13_digit_ISBN_returns_false
		isbn_string="4780470059029"
		assert_equal(false,remove_unwanted(isbn_string))
	end

 	def test_invalid_10_digit_ISBN_letters_only_returns_false
		isbn_string="efgikslijk"
		assert_equal(false,remove_unwanted(isbn_string))
	end

 	def test_invalid_13_digit_ISBN_letters_only_returns_false
		isbn_string="efgkorikslijk"
		assert_equal(false,remove_unwanted(isbn_string))
	end

 	def test_invalid_10_digit_ISBN_letters_and_numbers_returns_false
		isbn_string="efk3ri5sl9"
		assert_equal(false,remove_unwanted(isbn_string))
	end

 	def test_invalid_13_digit_ISBN_letters_and_numbers_returns_false
		isbn_string="efk3r72i5sl9x"
		assert_equal(false,remove_unwanted(isbn_string))
	end	
end