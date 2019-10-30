
def grand_clock &block
	hour = (Time.new.hour + 11)%12 + 1

	hour.times(&block)
end

=begin
def grand_clock &block
	hour = Time.new.strftime("%l").to_i
	
	hour.times(&block)
end
=end

=begin
def grand_clock &block
	hour = Time.new.hour

	if hour >= 13
		hour = hour - 12
	end

	if hour == 0
		hour = 12
	end

	hour.times do
		block.call
	end
end
=end

grand_clock do
	puts 'DONG!'
end
