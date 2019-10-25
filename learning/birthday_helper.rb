=begin
Christopher Alexander, 	 Oct 4, 1936
Christopher Lambert, 	Mar 29, 1957
Christopher Lee, 		May 27, 1922
Christopher Lloyd, 		Oct 22, 1938
Christopher Pine, 		 Aug 3, 1976
Christopher Plummer, 	Dec 13, 1927
Christopher Walken, 	Mar 31, 1943
The King of Spain, 		 Jan 5, 1938
Vlad Veterok, 			Dec 12, 1986
=end

#Birthday helper! Write a program to read in names and birth dates from a text file.
#It should then ask you for a name. 
#You type one in, and it tells you when that person’s next birthday will be 
#(and, for the truly adventurous, how old they will be).

#You’ll probably want to break each line up and put it in a hash, 
#using the name as your key and the date as your value. In other words: words:
# birth_dates['The King of Spain'] = 'Jan 5, 1938'

#Your program might look prettier if you use the each_line method for strings. 
#It works pretty much like each does for arrays, but it returns each line of the
#multiline string one at a time (but with the line endings, so you might need to chomp them).

#file = File.read 'birthdays.txt'

names_and_bdays = {}

File.read('birthdays.txt').each_line do |line| #(String)
	bname, bdate, byear = line.split(',')
	names_and_bdays[bname] = Time.local(byear, *(bdate.split))
end

puts 'Whose bday you wanna know?'
iname = gets.chomp
bday = names_and_bdays[iname]

if bday == nil
	puts 'Hey, there is no such human being!'
else
	now = Time.new
	age = now.year - bday.year
	if (now.month > bday.month || now.month == bday.month && now.day > bday.day)
		age += 1
	end

	if now.month == bday.month && now.day == bday.day
		puts "#{iname} turns #{age} TODAY!!"
	else
		date = bday.strftime "%b %d"
		puts "#{iname} will be #{age} on #{date}"
	end
end

#Less efficient approaches
=begin
names_and_bdays = {}

=begin
File.read('birthdays.txt').each_line do |line| #(String)
	line = line.chomp.split(',', 2)
	names_and_bdays[line[0]] = line[1]


	
end
=end
=begin
File.read('birthdays.txt').each_line do |line|
	line = line.chomp

	first_comma = 0

	while line[first_comma].chr != ',' && first_comma < line.length
		first_comma += 1
	end 

	name = line[0..(first_comma - 1)]
	date = line[-12..-1]

	names_and_bdays[name] = date

end

puts 'Whose birthday would you like to know?'
name = gets.chomp

if names_and_bdays[name] == nil
	puts "Sorry, looks like we don't know yet this person's birthday"
else
	puts "#{name}'s birthday is #{names_and_bdays[name][0..5]}"
end 
=end
