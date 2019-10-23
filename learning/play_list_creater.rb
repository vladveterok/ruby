require_relative "better_music_shuffler.rb"

shuffler = Shuffler.new

Dir.chdir '/Users/Berezhok/Downloads/Music' 


puts all_oggs = shuffler.better_music_shuffler(Dir['**/*{.ogg}'])

File.open 'playlist.m3u', 'w' do |f|
	all_oggs.each do |ogg|
		f.write ogg+"\n"
	end
end

#puts shuffler.shuffle [1,2,3,4,5,6,7]