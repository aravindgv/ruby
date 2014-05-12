require "rubygems"
require "apachelogregex"
# This is the log line/File you want to parse
# uncomment if u want to test one line. and comment log file 3 lines
#line = '87.18.183.252 - - [13/Aug/2008:00:50:49 -0700] "GET /blog/index.xml HTTP/1.1" 302 527 "-" "Feedreader 3.13 (Powered by Newsbrain)"'
line = File.open(/var/log/apache.log).collect do | line |
	valuses = parser.parse(line)
end

# Define the log file format.
# This information is defined in you Apache log file
# with the LogFormat directive
format = '%h %l %u %t \"%r\" %>s %b \"%{Referer}i\" \"%{User-Agent}i\"'

parser = ApacheLogRegex.new(format)
valuses = parser.parse(line)
puts parser.parse(line)
puts valuses["%{Referer}i"]
puts  valuses["%h"]
