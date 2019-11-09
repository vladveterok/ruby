puts "Hey-ho! Gimme something"

text = gets.chomp
words = text.split

frequencies = Hash.new(0)

words.each do |word|
  frequencies[word] += 1
end

frequencies = frequencies.sort_by do |word, num|
  num
end

frequencies.reverse!

frequencies.each do |word, num|
  puts word + " " + num.to_s
end