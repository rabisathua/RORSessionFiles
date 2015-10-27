#Get file name during runtime dynamically
load 'Solution.rb'
if ARGV.length == 1
	file_name = ARGV[0]	
	if File.exist? "#{file_name}"
		puts "File #{file_name} exists"
		Solution.new(file_name)
	else
		puts "File doesn't exists"
	end
elsif ARGV.length > 1
	puts "Pleae pass only one argument"	
else
	puts "no argument passed"
end