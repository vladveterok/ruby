def oldROmanNumerals number

	if (number < 1 || number > 3000)
		return 'Pick a numba between 1 and 3000 and hit ENTER again'
	end

	numString = ''

	romanArray = ['I', 'V', 'X', 'L', 'C', 'D', 'M']

#Checking thousands
	left = number
	write = left/1000
	left = left - write*1000

	if write > 0
		numString += romanArray[6]*write
	end

#Checking HUNDREDS and if500
	write = left/100
	checkNum = (write*100)%500 #checking if there is 500 #consider to write a method for checking numbers
	left = left - write*100

	if write > 0
		if checkNum != 0
			numString += romanArray[4]*write
		else
			numString += romanArray[5]
		end
	end

#Checking TENS and if50
	write = left/10
	checkNum = (write*10)%50 #checking if there is 50
	left = left - write*10

	if write > 0
		if checkNum != 0
			numString += romanArray[2]*write
		else
			numString += romanArray[3]
		end
		
	end

	write = left
	checkNum = write%5
	left = 0

	if write > 0
		if write < 5
			numString += romanArray[0]*write
		elsif write > 5
			numString += romanArray[1] + romanArray[0]*checkNum
		else
			numString += romanArray[1]
		end
	end

	numString

end


puts oldROmanNumerals 2555