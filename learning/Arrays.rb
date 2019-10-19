puts 'Gimme words so I can sort it, pleease'
inputsArray = []

while true
	getInp = gets.chomp.capitalize

	if getInp == ''
		break
	end

	inputsArray.push getInp
end

puts inputsArray.sort


=begin
	
Let's write a program which asks us to type in as many words as we want 
(one word per line, continuing until we just press Enter on an empty line), 
and which then repeats the words back to us in alphabetical order. OK?

Hint: There's a lovely array method which will give you a sorted version of an array:  sort. Use it!
	
=end




##Book example
=begin
	
puts 'Give me some words, and I will sort them:' 
words = []

while true
	word = gets.chomp 
	if word == ''
		break 
	end

	words.push word
end

puts 'Sweet! Here they are, sorted:' 
puts words.sort
	
=end