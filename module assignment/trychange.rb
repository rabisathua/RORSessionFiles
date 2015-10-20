class LineAnalyzer
   

  def calculate_word_frequency(stringdata,linecount)
        #p file
        words=Array.new
        linenumber=0
        words = stringdata.split(" ")
        frequency = Hash.new(0)
        frequencies=Hash.new (0)
        highest_wf_count = Hash.new(0)
        highest_wf_words = Hash.new(0)
        #puts array

        words.each { |word| frequency[word]+= 1}
        #puts " #{frequency} and linenumber is #{linecount}"
        highest_wf_count=frequency.max_by {|k,v| v}
        highest_wf_words=frequency.max_by {|k,v| k}
        puts "The highest number of times a word appered: #{highest_wf_count} in linenumber is #{linecount}"
        #p linecount
   
  end

  def get_line_number(file, word)
        count = 0
        
        file = File.open(file, "r") { |file| file.each_line { |line|
        count += 1
        return word,count if line =~ /#{word}/
        }}
  end

end


class Solution
      #content=Array.new
      word=Array.new
      i="text.txt"
      afile=File.new(i,"r")
      #IO.foreach("text.txt"){|block| puts block}
      m=File.file?( "text.txt" ) # It checks whesther file exisits or not
      puts "Is the file exists : #{m}"

     # if exisits returns true
     linenumber=0
      a=LineAnalyzer.new
      File.open("text.txt", "r") do |f|
        f.each_line do |line|
          linenumber+=1
         a.calculate_word_frequency(line,linenumber)
        end
      end
     c=a.get_line_number(afile,"!")
    puts "The line number in which the word is present is #{c}"      
end




