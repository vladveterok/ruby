Dir.chdir '/Users/Berezhok/Downloads/Photos'

puts pic_names = Dir['*.{JPG}']

puts 'What would you like to call this batch?'

batch_name = gets.chomp
if batch_name == ''
	return
end
puts
print "Downloading #{pic_names.length} files: "

pic_number = 0
pic_names.each do |name|
	print ' .'

	new_name = if pic_number < 10
		"#{batch_name}_0#{pic_number}.jpg"
	else
		"#{batch_name}_#{pic_number}.jpg"
	end

	puts
	puts name
	puts

	if File.exist?(new_name)
		puts
		puts new_name
		puts
		puts "File with the name #{new_name} already exists, do you want to overwrite the file? Yes or No"
			request = gets.chomp.downcase
			if request == "yes"
				File.rename name, 'new_'+new_name
			elsif request == "no"
				exit
			end
		
	else
		File.rename name, new_name		
	end	
	
	pic_number += 1
end

puts
puts "Done, #{batch_name}!"

