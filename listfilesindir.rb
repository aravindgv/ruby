require 'find'
Find.find('/etc/') do |file|
  puts file
end
## Recursively List Directories in Ruby?
Dir.glob("/var/**/*") do |file|
	puts file
end
