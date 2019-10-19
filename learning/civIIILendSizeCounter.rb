
o = 'ocean'
M = 'land'


world = [[o,o,o,o,o,M,o,o,o,o,o], 
		 [o,o,o,o,o,M,o,o,o,o,o], 
		 [o,o,o,o,M,o,o,o,M,M,o], 
		 [o,o,o,o,M,o,o,o,o,M,o], 
		 [o,o,o,M,o,o,o,o,o,o,o], 
		 [o,o,o,o,M,M,M,M,o,o,o], 
		 [M,M,M,M,M,M,M,M,M,M,M], 
		 [o,o,o,M,M,o,M,M,M,o,o], 
		 [o,o,M,o,o,o,M,o,o,o,o], 
		 [o,M,o,o,o,M,o,o,o,o,o], 
		 [M,o,o,o,o,M,o,o,o,o,o]]


def continent_size world, x, y
	if (x < 0 || x > world.length - 1)
		return 0
	end

	if world[x][y] != 'land'
		return 0
	end

	size = 1
	world[x][y] = 'Counted land'
	
	size += continent_size(world, x-1, y-1)
	size += continent_size(world, x-1, y)
	size += continent_size(world, x-1, y+1)
	size += continent_size(world, x, y-1)
	size += continent_size(world, x, y+1)
	size += continent_size(world, x+1, y-1)
	size += continent_size(world, x+1, y)
	size += continent_size(world, x+1, y+1)
	
	size
end


puts continent_size world, 5, 5
