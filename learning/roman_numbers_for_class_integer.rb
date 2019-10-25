class Integer

def to_roman
	if (self < 1)
		return 'Pick a number bigger than 0, please'
	end 

	thousands 	= (self 		/ 1000)
	hundreds 	= (self%1000 	/ 100)
	tens 		= (self%100 	/ 10)
	ones 		= (self%10)

	roman = 'M' * thousands
#hundreds
	if hundreds == 4
		roman += 'CD' 	#400
	elsif hundreds == 9
		roman += 'CM' 	#900
	else
		roman += 'D' * (self%1000 / 500)
		roman += 'C' * (self%500 / 100)
	end
#tens
	if tens == 4
		roman += 'XL' 	#40
	elsif tens == 9
		roman += 'XC' 	#90
	else
		roman += 'L' * (self%100 / 50)
		roman += 'X' * (self%50 / 10)
	end
#ones
	if ones == 4
		roman += 'IV' 	#4
	elsif ones == 9
		roman += 'IX' 	#9
	else
		roman += 'V' * (self%10 / 5)
		roman += 'I' * (self%5)	
	end

	roman
end
end

=begin
while true
	puts 'Put a number from 1 to 3000'
	puts

	input = gets.chomp
	result = romanNumber(input.to_i)

	if input != ''
		puts result
	else
		break
	end
end
=end
puts 74.to_roman
