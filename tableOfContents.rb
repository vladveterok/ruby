title = 'Table of Content'
line_width = 50
chap_number = 1

chaps = [['Getting Started', 1],
		['Numbers', 9],
		['Letters', 13]]

puts title.center(50)
puts

chaps.each do |chap|
	nameCh = chap[0]
	page = chap[1]

	beginnig = 'Chapter ' + chap_number.to_s + ': ' + nameCh
	ending = 'page ' + page.to_s

	puts beginnig.ljust(30) + ending.rjust(30)

#puts ('Chapter ' + chap_number.to_s + ':').ljust(10) + nameCh.ljust(50) + ('page ' + page.to_s).ljust(50)
chap_number += 1
end

=begin
	

	Table of contents, revisited. Rewrite your table of contents pro- gram on page 36. 
	Start the program with an array holding all of the information for your table of contents (chapter names, page numbers, and so on). 
	Then print out the information from the array in a beautifully formatted table of contents.
	
=end