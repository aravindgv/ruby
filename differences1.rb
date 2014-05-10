unless ARGV.length == 2
puts "Usage: "
exit
end
old_file = File.open(ARGV[0]).readlines
new_file = File.open(ARGV[1]).readlines
puts 'Following Files have been added'
puts old_file - new_file
