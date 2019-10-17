require 'minitest/autorun'
require_relative './hello'

describe Hello do
	describe "#world" do
		it "should return world" do
			Hello.world.must_equal 'world'
		end
	end
end
