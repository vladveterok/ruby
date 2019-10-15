def englishNumber number

	if (number < 0 || number > 100)
		return 'From ZERO to ONE HUNDRED, idiot'
	end

	numString = ''

#Let's check if HUNDREDS are in the number:
	left = number
	write = left/100
	left = left - write * 100

	if write > 0
		return 'One hundred'
	end

#Now we check if there are TENS in the number
	write = left/10
	left = left - write * 10

#Now let's do logic of convertion
	if write > 0
#First itteration is for 10-19
		if write == 1
			if left == 0
				numString += 'ten'
			elsif left == 1
				numString += 'eleven'
			elsif left == 2
				numString += 'twelve'	
			elsif left == 3
				numString += 'thirteen'
			elsif left == 4
				numString += 'fourteen'
			elsif left == 5
				numString += 'fifteen'	
			elsif left == 6
				numString += 'sixteen'	
			elsif left == 7
				numString += 'seventeen'
			elsif left == 8
				numString += 'eighteen'	
			elsif left == 9
				numString += 'nineteen'		
			end
			left = 0
#TENS >= 20
		elsif write == 2
			numString += 'twenty'
		elsif write == 3
			numString += 'thirty'
		elsif write == 4
			numString += 'forty'
		elsif write == 5
			numString += 'fifty'
		elsif write == 6
			numString += 'sixty'
		elsif write == 7
			numString += 'seventy'
		elsif write == 8
			numString += 'eighty'
		elsif write == 9
			numString += 'ninety'		
		end

		if left > 0
			numString += '-'
		end
	end
#Singles
	write = left
	left = 0

	if write > 0

		if write == 1
			numString += 'one'
		elsif write == 2
			numString += 'two'
		elsif write == 3
			numString += 'three'
		elsif write == 4
			numString += 'four'
		elsif write == 5
			numString += 'five'
		elsif write == 6
			numString += 'six'
		elsif write == 7
			numString += 'seven'
		elsif write == 8
			numString += 'eight'
		elsif write == 9
			numString += 'nine'	
		end	
	end

	if numString == ''
		return 'zero'
	end
#This is what this piece of shit returns
	numString
end

#test input
#puts englishNumber 15

#Lets give the user a chance to put a number, don't we?
while true
	puts 'Gimme numba from 0 to 100!'
	number = gets.chomp
	result = englishNumber(number.to_i)
	
	if number != ''
		puts result + ' sucker'
		puts
	else
		break
	end
end