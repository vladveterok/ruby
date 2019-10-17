def romanNumber number
	if (number < 1)
		return 'Pick a number bigger than 0, please'
	end 

	thousands 	= (number 		/ 1000)
	hundreds 	= (number%1000 	/ 100)
	tens 		= (number%100 	/ 10)
	ones 		= (number%10)

	roman = 'M' * thousands
#hundreds
	if hundreds == 4
		roman += 'CD' 	#400
	elsif hundreds == 9
		roman += 'CM' 	#900
	else
		roman += 'D' * (number%1000 / 500)
		roman += 'C' * (number%500 / 100)
	end
#tens
	if tens == 4
		roman += 'XL' 	#40
	elsif tens == 9
		roman += 'XC' 	#90
	else
		roman += 'L' * (number%100 / 50)
		roman += 'X' * (number%50 / 10)
	end
#ones
	if ones == 4
		roman += 'IV' 	#4
	elsif ones == 9
		roman += 'IX' 	#9
	else
		roman += 'V' * (number%10 / 5)
		roman += 'I' * (number%5)	
	end

	roman
end

#SINGLES
# I 	= 1
# IV 	= 4
# V 	= 5
# IX 	= 9
#TENS
# X 	= 10
# XL 	= 40
# L 	= 50
# XC 	= 90
#HUNDREDS
# C 	= 100
# CD 	= 400
# D 	= 500
# CM 	= 900

# M = 1000

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

#puts romanNumber 3000
