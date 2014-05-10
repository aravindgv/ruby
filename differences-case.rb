unless ARGV.length == 2
	puts "Usage: Need two arrgmnets "
	exit
end
old_inventory = File.open(ARGV[0]).collect do | line |
	line.downcase
end
new_inventory = File.open(ARGV[1]).collect do | line |
	line.downcase
end
puts "List of inventery"
puts new_inventory - old_inventory
