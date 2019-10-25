class Integer

	def to_fac
		if self <= 1
			1
		else
		self * (self - 1).to_fac
		end
	end

end

puts 4.to_fac


 




