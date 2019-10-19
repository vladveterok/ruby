def sort arr
	rec_sort arr, []
end

def rec_sort unsorted, sorted
	return sorted if unsorted.length <= 0

	smallest = unsorted.pop
	still_unsorted = []

	unsorted.each do |checked_obj|
		if checked_obj < smallest
			still_unsorted.push smallest
			smallest = checked_obj
		else
			still_unsorted.push checked_obj
		end
	end
		sorted.push smallest
		rec_sort still_unsorted, sorted
end


puts sort (['LOL', 'KEK', 'ABC', 'HO', 'APPLE', 'JUICE', 'BLOCK', 'XEROX', 'COCK'])