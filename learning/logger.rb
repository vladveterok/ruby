$global_indent = 0

def log block_description, &block
	prefix = '	'*$global_indent
	
	puts "#{prefix} #{block_description.inspect} is started..."
	$global_indent += 1
	output = block[]
	$global_indent -= 1
	puts "#{prefix}...#{block_description.inspect} is finished and returned: #{output} "
	
	
end

log "outer block" do
	log "inner block" do
		log "yet another block" do
			log "inside the yet another block" do
			"should be 5"
			end
			"Definitely, it's 5"
		end
		2+3
	end
	"Yep, it's #{2 + 3}, told you"
end