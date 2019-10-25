def roman_to_integer roman
	digit_vals = {'i' => 1,
				  'v' => 5,
				  'x' => 10,
				  'l' => 50,
				  'c' => 100,
				  'd' => 500,
				  'm' => 1000}

	total = 0
	prev = 0
	index = roman.length - 1

	while index >= 0
# Find a separate character
		c = roman[index].downcase
#find and pick value of this character
		val = digit_vals[c]
#counter - 1
		index = index - 1

#check if there is the value that we have in the hash table
		if !val
			return "Well, it definitely is not a valid roman numeral"
		end

#if value < prev --  find a way to subtract this value from a total	
#if value >= prev -- point prev to a value
		if val < prev
			val *= -1
		else
			prev = val
		end

# add value to a total
		total += val


#return total
	end
	total
end

puts(roman_to_integer('mcmxcix'))
puts(roman_to_integer('xl'))
puts(roman_to_integer('mmcd'))
puts(roman_to_integer('viii'))