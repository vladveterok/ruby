def ask question
	while true
		puts question
		reply = gets.chomp.downcase

		if (reply == 'yes' || reply == 'no')
			return reply
			break
		else
			puts 'Could you please answer YES or NO?!'
			puts
		end	
	end
	#answer
end


puts 'Hello and thank you for taking the time to helpm us with this survey'
puts puts

ask 'Do you love tacos?'
ask 'Do you love icecream?'
wet_bed = ask 'Do you wet the bed?'
puts wet_bed
puts 1400/1000


## ANOTHER APPROACH
=begin

def ask question
	while true
		puts question
		reply = gets.chomp.downcase

		if (reply == 'yes' || reply == 'no')
			return reply
		else
			puts 'Could you please answer YES or NO?!'
			puts
		end	
	end
end


puts 'Hello and thank you for taking the time to helpm us with this survey'
puts puts

ask 'Do you love tacos?'
ask 'Do you love icecream?'
wet_bed = ask 'Do you wet the bed?'
puts wet_bed
	
=end
