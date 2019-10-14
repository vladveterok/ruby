command = ''
#check = 'BYE'
exitCondition = 0

while exitCondition != 3
command = gets.chomp

	if command == 'BYE'
				exitCondition += 1
				#puts exitCondition
				puts 'HUH?! SPEAK UP, SONNY!'
	else
		exitCondition = 0
		#puts exitCondition
		if  (command != command.upcase || command == '')
			puts 'HUH?! SPEAK UP, SONNY!'

		else
			puts 'NO, NOT SINCE ' + (rand(1929..1950)).to_s + '!'
		end
	end

end

if exitCondition == 3
	puts 'BYE SONNY!'
end


## Another approach --------> !!!
=begin
	
rescue 
 puts 'HEY THERE, PEACHES! GIVE GRANDMA A KISS!' 
bye_count = 0

while true
	said = gets.chomp 
	if said == 'BYE'
		bye_count = bye_count + 1
	else
		bye_count = 0
	end

	if bye_count >= 3
		puts 'BYE-BYE CUPCAKE!' 
		break
	end

	if said != said.upcase
		puts 'HUH?! SPEAK UP, SONNY!'
	else
		random_year = 1930 + rand(21)
		puts 'NO, NOT SINCE ' + random_year.to_s + '!'
 	end
end
	
=end