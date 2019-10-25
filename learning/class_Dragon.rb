class Dragon
	def initialize name
		@name = name
		@asleep = false
		@stuff_in_belly = 10 #he's not hungry
		@stuff_in_ars 	= 0  #he doesn't want to poop

		puts "#{@name} is born! Look at this cutie pie ^^"
	end

#Here interractions with dragon.
#you can feed it, rock it, toss it, and walk it
	def feed
		puts "You feed #{@name}"
		@stuff_in_belly = 10
		passage_of_time
	end

	def walk
		puts "You walk #{@name}"
		@stuff_in_ars = 0
		passage_of_time
	end

	def put_to_bed
		puts "You put #{@name} to bed"
		@asleep = true
		3.times do
			if @asleep
				passage_of_time
			end
			if @asleep
				puts "#{@name} snores, filling the room with smoke"
			end
			if @asleep
				@asleep = false
				puts "#{@name} wakes up slowly"
			end
		end
	end

	def toss
		puts "You toss #{@name} up into the air"
		puts "#{@name} giggles, singing your eyebrows. Awkwardly but still with love indeed"
		passage_of_time
	end

	def rock
		puts "You rock #{@name} gently"
		@asleep = true
		puts "He briefly dozes off..."
		passage_of_time
		if @asleep
			@asleep = false
			puts "...but wakes when you stop."
		end
	end

#Private
#Dragon should be possible to be hungry, to want to poop
#Passage 0f time - while we do something tome goes, he becomes hungry and poopy gradually.
#If he hungry he wakes up and asks for food, if he poopy he wakes up and asks for poop
#if he completely hungry, he eats you, if he completely poopy he shits. 
#If some of previous and he was asleep, he wakes up

	private

	def hungry? #true or false
		@stuff_in_belly <= 2
	end

	def poopy?
		@stuff_in_ars >= 8
	end

	def passage_of_time
		#move food from belly to ars
		if @stuff_in_belly > 0
			@stuff_in_belly -= 1
			@stuff_in_ars += 1
		else #is starving
			if @asleep
				@asleep = false
				puts "#{@name} wakes up suddenly!"
			end
			puts "#{@name} is starving! In desperation -- and somewhow accidentally – you pat ates you :("
			exit #we can improve the program asking user if they want to start over
		end

		if @stuff_in_ars >= 10 #shits they pants 
			@stuff_in_ars = 0
			puts "Whoops! #{@name} had an accident... :)"
		end

		if hungry?
			if @asleep
				@asleep = false
				puts "#{@name} wakes up suddenly!"
			end
			puts "#{@name}'s stomac grumbles... any ideas?"
		end

		if poopy?
			if @asleep
				@asleep = false
				puts "#{@name} wakes up suddenly!"
			end
			puts "#{@name} does the potty dance!"
		end
	end

end



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

=begin
actions = {'Feed' 			=> dragon_01.feed,
		   'Toss' 			=> dragon_01.toss,
		   'Walk' 			=> dragon_01.walk,
		   'Put to bed' 	=> dragon_01.put_to_bed,
		   'Rock'			=> dragon_01.rock}



actions['Rock']
actions['Rock']
=end

#while true
#	puts "What would you do with this cutie?"
#end

#dragon_01 = Dragon.new 'Draggy'











