class LineAnalyzer
	attr_reader :highest_wf_count,:highest_wf_words,:content,:line_number
	def initialize()
		@content = ""
		@line_number = 0
	end	
	#take line of a text and line number
	#calculate the word having highest frequency
	def calculate_word_frequency(lineanalyzers)		
		@content=lineanalyzers.to_a
		@highest_wf_count = []
		@line_number=0
		res = Hash.new(0)		
  		for line in @content
  		 	index = -1
  		 	frequency_count = Hash.new(0)  		 	
  		 	for word in line
  		 		frequency_count[word] += 1  		 		
  		 	end
  		 	@highest_wf_count.push(frequency_count.max_by{|key,value| value})	 	
  		end		
		print_highest_word_frequency_across_lineanalyzers(highest_wf_count,highest_wf_words)
		return @highest_wf_count
	end
end