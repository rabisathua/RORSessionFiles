load "LineAnalyzer.rb"
class Solution
      def take_filedata
    # It checks whesther file exisits or not
      m=File.file?( "textfile.txt" )     
      puts "Is the file exists : #{m}"    # if exisits returns true
    
      linecount=0
      a=LineAnalyzer.new
          File.open("textfile.txt") do |f|
          f.each_line do |line|
           linecount+=1
          a.calculate_word_frequency(line,linecount)
        end
    end

      file = File.open("textfile.txt")
      contents = file.read
      a.highest_word_frequency(contents)
    end
         
end

object=Solution.new
object.take_filedata
