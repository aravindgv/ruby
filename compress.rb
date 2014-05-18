require 'fileutils'
require 'zip/zip'

unless ARGV[0]
	puts "Usage: ruby compress.zip <FileName to be Zipped>"
	exit
end

file = ARGV[0].chomp

if File.exists?(file)
	puts "Enter Zip File Name"
	myzip = gets.chomp
	Zip::ZipFile.open(myzip, true) do |zfile|
		begin
			puts "#{zfile} is being added to the archive"
		zipfile.add(file,file)
		rescue Exception => e
			puts "Error in creating zip file: \n #{e}"
		end
	end
else
	puts "\nFile Could not be found"
end
