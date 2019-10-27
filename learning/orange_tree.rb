#Orange tree.
#DONE: Has height method - returns height

#DONE: Has a one_year_passes method - when called, ages the tree one year.
#DONE: Each year tree grows taller. 
#DONE: After some years the tree should die.

#DONE: For the first few years shouldn't produce fruit, but should after.
#The older tree, the more fruit it produces.

#DONE: count_the_oranges - returns the number of oranges.

#DONE: pick_an_orange - reduces @orange_count by 1, returns a string telling how delicious the orange was
#DONE: or that there are no more oranges to pick this year.

#Each orange you don't pick one year fall of before the next year.

class Orange_tree

	def initialize
		@orange_count = 0
		@b = 0
		@tree_height = 1 #?
		@tree_age = 0
		puts 'Look, how beautiful your little orange tree!'
	end

	def height
		puts "Your cutie-putie orange tree is #{@tree_height} feet tall" 
	end

	def count_the_oranges
		if @orange_count == 1
			puts "There is #{@orange_count} orange on your beautiful tree"
		elsif @orange_count > 1
			puts "#{@orange_count} oranges hanging on your tree right now"
		else
			puts 'Sorry, pal, there are no oranges on you tree. Try to wait a years or so.'
		end
	end

	def pick_an_orange
		if @orange_count > 0
			returns = ['Mm, this orange was sooo delicious...', 'Yummy-yummy orange!', 'It\'s a tidbit of oranges!', 'Everyone wants your oranges, baby']
			#puts returns[rand(0..returns.length-1)]
			puts returns.sample #randomly returns array object
			@orange_count -= 1
		else
			puts 'Sorry, pal, there are no oranges on you tree. Try to wait a years or so.'
		end
	end

	def wait_a_year
		puts 'One year passed...'
		one_year_passes
	end

private
	
	def one_year_passes
		if @tree_age < 10 #adjust!
			@tree_age += 1
			@tree_height += 1
			if @tree_age <= 2
				puts "Good tree! But too young to produce fruits. Try and wait another year or two"
			else
				@b += 1
				@orange_count += @b
			end
			
			#@orange_count += 1
			

		else
			puts "Your orange tree was beautiful but old. It died. And you should make a fresh start with a new tree!"
			exit
		end
	end

end

tree = Orange_tree.new
object = Object.new #dummy object
tree.wait_a_year
tree.wait_a_year
tree.wait_a_year
tree.count_the_oranges
tree.wait_a_year
tree.count_the_oranges
tree.wait_a_year
tree.count_the_oranges
tree.wait_a_year
tree.count_the_oranges
tree.wait_a_year
tree.count_the_oranges
tree.wait_a_year
tree.count_the_oranges
tree.wait_a_year
tree.count_the_oranges
tree.wait_a_year
tree.count_the_oranges
tree.wait_a_year
tree.count_the_oranges
tree.wait_a_year
tree.count_the_oranges
tree.wait_a_year
tree.count_the_oranges




=begin
while true
	puts
	puts "command: height, count_the_oranges, pick_an_orange, wait_a_year, exit"
	command = gets.chomp

	if command == 'exit'
		exit
	elsif tree.respond_to?(command) && !object.respond_to?(command)
		tree.send command
	else
		puts "Huh? Please, put one of the commands"
	end
end
=end
			


