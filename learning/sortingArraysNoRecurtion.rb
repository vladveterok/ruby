def rec_sort unsorted
	
	sorted = []
	
while unsorted.length != 0
	smallest = unsorted.pop
	still_unsorted = []

	unsorted.each do |checked_object|

		if checked_object < smallest
			still_unsorted.push smallest
			smallest = checked_object
		else
			still_unsorted.push checked_object
		end
	end

	sorted.push smallest
	unsorted = still_unsorted
end

sorted

end

arr = []
while true

	input = gets.chomp.capitalize
	arr.push input

	if input == ''
		puts rec_sort arr
		break

	end
end

#puts rec_sort (['LOL', 'KEK', 'ABC' 'HO', 'APPLE', 'JUICE', 'BLOCK', 'XEROX', 'COCK'])


#LOGIC
#if unsorted.obj < smallest
# 	still_unsorted.push smallest
# 	smallest = unsorted.obj
#else (if unsorted.obj > smallest)
# 	still_unsorted.push unsorted.obj 
#
#now we have the smallest obj in var smallest and all alse objs in still_unsorted
#we need to push smallest obj into sorted arr
# 	sorted.push smallest
# 
#now we need to restart our method
# 	
#