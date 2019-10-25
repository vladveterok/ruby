class Array

def to_shuffle
	shuff = []
	

	while self.length > 0
		rand_index = rand(self.length)
		#puts 'rand is ' + rand_index.to_s
	
		curr_index = 0
		new_arr = []

		self.each do |checked_object|
			if curr_index == rand_index
				shuff.push checked_object	
			else
				new_arr.push checked_object
			end
			curr_index += 1
			#puts curr_index
			
		end
		
		#puts curr_index
		self.replace new_arr
	end
	shuff
end

end

puts [1,2,3,4,5,6,7,8,0,9,10].to_shuffle

 




#We need to make two more arrs -- shuf – where we will store shuffled objects 
#and unshiffled where we will store numbers that left after each itteration