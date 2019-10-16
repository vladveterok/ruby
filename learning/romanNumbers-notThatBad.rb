def oldROmanNumerals number

	if (number < 1 || number > 3000)
		return 'Pick a numba between 1 and 3000 and hit ENTER again'
	end

	roman = ''

	roman += 'M' * (number/1000)		# 1000
	roman += 'D' * (number%1000 / 500)	# 500
	roman += 'C' * (number%500 	/ 100)	# 100
	roman += 'L' * (number%100 	/ 50)	# 50
	roman += 'X' * (number%50 	/ 10)	# 10
	roman += 'V' * (number%10 	/ 5)	# 5
	roman += 'I' * (number%5 	/ 1)	# 1

	
	roman

end

while true
	puts 'Pick a number from 1 to 3000'
	number = gets.chomp
	result = oldROmanNumerals(number.to_i)

	if number != ''
		puts result
		puts
	else
		break
	end
end

#puts oldROmanNumerals 0

