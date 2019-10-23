numberOfBottles = 5ага,

while numberOfBottles != 0
	if numberOfBottles >=3		
	puts numberOfBottles.to_s + ' bottles of beer on the wall, ' + numberOfBottles.to_s + ' bottles of beer.'
	#numberOfBottles -= 1
	puts 'Take one down and pass it around, ' + (numberOfBottles -= 1).to_s + ' bottles of beer on the wall.'
	else
		if numberOfBottles == 2
		puts numberOfBottles.to_s + ' bottles of beer on the wall, ' + numberOfBottles.to_s + ' bottles of beer.'
		puts 'Take one down and pass it around, ' + (numberOfBottles -= 1).to_s + ' bottle of beer on the wall.'
		
		else
			if numberOfBottles == 1
			puts numberOfBottles.to_s + ' bottle of beer on the wall, ' + numberOfBottles.to_s + ' bottle of beer.'
			puts 'Take one down and pass it around, no more bottles of beer on the wall.'
			numberOfBottles -= 1
			end
		end
	end
end

if numberOfBottles == 0
	puts 'No more bottles of beer on the wall, no more bottles of beer.'
	puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
end