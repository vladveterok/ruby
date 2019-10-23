class Shuffler

def shuffle arr
	shuff = []
	

	while arr.length > 0
		rand_index = rand(arr.length)
		#puts 'rand is ' + rand_index.to_s
	
		curr_index = 0
		new_arr = []

		arr.each do |checked_object|
			if curr_index == rand_index
				shuff.push checked_object	
			else
				new_arr.push checked_object
			end
			curr_index += 1
			#puts curr_index
			
		end
		
		#puts curr_index
		arr = new_arr
	end
	shuff
end

end

#puts shuffle [1,2,3,4,5,6,7,8,0,9,10]

 




#We need to make two more arrs -- shuf – where we will store shuffled objects 
#and unshiffled where we will store numbers that left after each itteration