puts 'Please, put first year'
firtsYear = gets.chomp.to_i
puts 'And the last year, please'
lastYear = gets.chomp.to_i

if firtsYear <= lastYear
	while firtsYear != lastYear+1
		
		if (firtsYear%4 == 0 and firtsYear%100 != 0) or firtsYear%400 == 0
			
			puts firtsYear
		end

		firtsYear += 1

	end

else puts 'Yez don\'t fuck with me boya, do yez?'

end

