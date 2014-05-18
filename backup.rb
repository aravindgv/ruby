require 'fileutils'

puts "Copying Files"
FileUtils.cd ('/tmp') do
	FileUtils.mkdir_p('/tmp/backup')
	FileUtils.cp('/tmp/agv/test.agv','/tmp/backup/test.agv')
end
