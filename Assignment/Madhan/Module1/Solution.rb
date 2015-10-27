load "LineAnalyzer.rb"
class Solution < LineAnalyzer
	attr_reader:analyzers,:highest_count_across_lineanalyzers,:highest_count_words_across_lineanalyzers
	def initialize(filename)		
		@filename = filename
		@analyzers = []
		analyze_file()
	end
	def analyze_file()
		#processes ‘test.txt’ into an array of LineAnalyzers
		lineanalyzers = []
		File.open("#{@filename}","r").each_line do |word|			
			lineanalyzers.push(word.strip.split(" "))
  		 end  		 
  		 calculate_line_with_highest_frequency(lineanalyzers)
	end
	def calculate_line_with_highest_frequency(lineanalyzers)
		#determines which line(s) of text has the highest number of
		#occurrence of a single word
		calculate_word_frequency(lineanalyzers)
	end
	def print_highest_word_frequency_across_lineanalyzers(highest_count_lines,highest_count_words)
		#prints the word with the highest number of occurrences
		#and its corresponding line number
		@highest_count_across_lineanalyzers = highest_count_lines
		@highest_count_words_across_lineanalyzers = highest_count_words
		
		print "\nHighest frequency string across each line::\n"
  		@highest_count_across_lineanalyzers.each_with_index {|key,value| p "line no=#{@line_number +=1}"; p key}	  		 
  		
  		@highest_count_words_across_lineanalyzers =  @highest_count_across_lineanalyzers.max_by(&:last)
  		print "\nHighest word across line analyzer \n#{@highest_count_words_across_lineanalyzers}"
  		return 	@highest_count_words_across_lineanalyzers
	end
end