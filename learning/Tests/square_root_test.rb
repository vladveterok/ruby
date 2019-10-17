require 'minitest/autorun'

def square_root(value)
	return nil if value < 0
	Math.sqrt(value).round
end

def reverse_it(string)
	string.reverse
end

def thisShit(string)
	string
end

class Mammal
end

class Cat < Mammal
end

class SquareRootTest < Minitest::Test
	
	def test_that_kitty_responds_to_empty_method #kind of doesn't work, and I don't understand this test clearly
		kitty = Cat.new
		assert_respond_to kitty, :empty?
	end

	def test_that_kitty_is_kind_of_a_mammal
		kitty = Cat.new
		assert_kind_of Mammal, kitty
	end

	def test_that_kitty_is_of_class_Cat
		kitty = Cat.new
		assert_instance_of Cat, kitty
	end

	def test_that_square_root_of_9_is_3
		result = square_root(9)
		assert_equal 3, result
	end

	def test_that_square_root_of_17_is_4
		result = square_root(17)
		assert_equal 4, result
	end

	def test_that_square_root_of_24_is_5
		result = square_root(24)
		assert_equal 5, result
	end

	def test_that_square_root_of_negative_number_is_nil
		result = square_root(-1)
		assert_nil result
	end

	def test_how_to_use_assert
		assert(reverse_it('abc') == 'cba', "reverse('abc') did not return 'cba'")
	end

	def test_that_reverse_it_reverses_abc_string
		assert_equal('cba', reverse_it('abc'))
	end

	def test_that_reverse_it_reverses_abc_string_with_variable
		result = reverse_it('abc')
		assert_equal('cba', result)
	end

	def test_that_list_is_empty
		list = []
		assert_empty(list)
	end

	def test_that_list_includes_an_object
		list = ['abc']
		assert_includes(list, 'abc')
	end

	def test_that_errorMessage_includes_next_text
		error = thisShit('this shit is not found')
		assert_match(/not found/, error)
	end
end
