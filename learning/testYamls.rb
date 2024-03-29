require 'yaml'

def yaml_save object, filename
	File.open filename, 'w' do |f|
		f.write(object.to_yaml)
	end
end

def yaml_load filename
	yaml_string = File.open filename

	YAML::load yaml_string
end

test_array = ['Slick Shoes',
			  'Bully Blinders',
			  'Pinchers of Peril']

filename = 'DatasGadgets.txt'

#Save
yaml_save test_array, filename

#Read
read_array = yaml_load filename

puts read_array == test_array

puts Dir.children("Tests")