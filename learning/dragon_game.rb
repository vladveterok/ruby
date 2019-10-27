require_relative 'class_Dragon'

puts "Let's make a dragon, shall we? But for start let's give the dragon a name"
while true
	dragon_name = gets.chomp

	if dragon_name[" "]
		puts "Sorry, but dragons really don't like names of two words"
	elsif dragon_name == ""
		puts "You don't want to get your own cutie little dragon?\nOK, go fuck yourself, bitch."
		exit
	else
		dragon_01 = Dragon.new dragon_name
		break
	end	
			
end

puts
puts "What would you like to do with this cutie?"
puts comm_list = "1 Feed\n2 Toss\n3 Walk\n4 Put to bed\n5 Rock\nType 'exit' if you want to kill your dragon and shut this whole shit down."
puts "Please choose a number of a command"
puts
while true
	
	command = gets.chomp
	
	if command == 'exit'
		puts
		puts 'You\'ve just killed the little sucker. Game over. Fin.'
		exit
	end

	if (command.to_i < 1 || command.to_i > 5)
		puts 'WOOOOOW! Please, choose a proper number -- from 1 to 5'
		puts
	else
		if command == '1'
			dragon_01.feed
		elsif command == '2'
			dragon_01.toss
		elsif command == '3' 
			dragon_01.walk
		elsif command == '4'
			dragon_01.put_to_bed
		elsif command == '5'
			dragon_01.rock
		end
		puts
		puts comm_list
		puts
	end
	
end











