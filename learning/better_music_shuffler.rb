class Shuffler

def better_music_shuffler filenames

# let's do a shuffle like card-shuffling. Let's
# shuffle the "deck" twice, then cut it once. That's 
# not enough times to make a perfect shuffle, but it 
# does mix things up a bit.

# Before we do anything, let's actually *sort* the
# input, since we don't know how shuffled it might
# already be, and we don't want it to be *too* random.

filenames = filenames.sort
len = filenames.length

#Now we shuffle twice
  2.times do
    l_indx = 0
    r_index = len/2
    shuff = []

    while shuff.length < len
      if shuff.length%2 == 0
      	shuff.push(filenames[r_index])
      	r_index += 1
      else
      	shuff.push(filenames[l_indx])
      	l_indx += 1
      end	
    end
    filenames = shuff
  end
  puts filenames	  


arr = []
cut = rand(len)
indx = 0

  while indx < len
	  arr.push(filenames[(indx+cut)%len])
	  indx += 1
  end
puts
  arr
end

end

=begin test info
songs = ['rock/hard', 'rock/part', 'rock/card', 
		 'blues/blue', 'blues/green', 'blues/abbuse', 
		 'juzz/bob', 'juzz/hizz', 'juzz/gas']

puts better_music_shuffler songs
=end