def sort arr
	rec_sort arr, []
	#puts arr * 1 
end

def rec_sort unsorted, sorted
	if unsorted.length <= 0
		return sorted
	end
	
	smallest = unsorted.pop
	still_unsorted = []
	#puts smallest

	unsorted.each do |checked_object|

		if checked_object.downcase < smallest.downcase
			still_unsorted.push smallest
			smallest = checked_object
		else
			still_unsorted.push checked_object
		end
	end

	sorted.push smallest
	rec_sort still_unsorted, sorted

end

=begin
arr = []
while true
input = gets.chomp
sort arr.push input

	if input == ''
		break
	end
end
=end

puts sort (['LOL', 'KEK', 'HO', 'APPLE', 'JUICE', 'BLOCK', 'abc', 'XEROX', 'band', 'COCK'])


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