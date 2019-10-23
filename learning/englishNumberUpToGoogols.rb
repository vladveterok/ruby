def english_numbers num
	
	if num < 0
		return 'Put a positive number, kiddo'
	elsif num == 0
		return 'zero, null, nil, nada, zip, goose egg'
	end
			

	numString = ''

	onesArray = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	tensArray = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
	teenagersArray = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']


	left = num

	zillions = [['hundred', 			 2],
				['thousand', 			 3],
				['million', 			 6],
				['billion', 			 9],
				['trillion', 			12],
				['quadrillion', 		15],
				['quintillion', 		18],
				['sextillion', 			21],
				['septillion', 			24],
				['octillion', 			27],
				['nonillion', 			30],
				['decillion', 			33],
				['undecillion', 		36],
				['duodecillion', 		39],
				['tredecillion', 		42],
				['quattuordecillion', 	45],
				['quindecillion', 		48],
				['sexdecillion', 		51],
				['septendecillion', 	54],
				['octodecillion', 		57],
				['novemdecillion', 		60], 
				['vigintillion', 		63],
				['googol', 			   100]]

	while zillions.length > 0
		zill_pair = zillions.pop
		zill_name = zill_pair[0]
		zill_base = 10**zill_pair[1]

		write = left/zill_base
		left = left - write*zill_base

		if write > 0
			prefix = english_numbers write
			numString += prefix + ' ' + zill_name
			if left > 0
				numString += ' '
			end
		end
	end

	write = left/10
	left = left - write*10
	if write > 0
		if (write == 1 && left > 0)
		numString += teenagersArray[left-1]
		left = 0
		else
			numString += tensArray[write-1]
			if left > 0
				numString += '-'
			end
		end
	end

	write = left
	left = 0
	if write > 0
		numString += onesArray[write - 1]
	end
	numString
end

#puts english_numbers 0

puts 'Hey! Put a whole positive number without breaks and I will englisize it :)'
while true
	input = gets.chomp
	if input == ''
		break
	else
		puts english_numbers input.to_i
	end
	
end
