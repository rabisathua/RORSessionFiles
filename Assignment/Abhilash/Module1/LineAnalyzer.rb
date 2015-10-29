class LineAnalyzer


      def calculate_word_frequency(stringdata,linenumber)
        

            words=Array.new
            words = stringdata.split(" ")
            frequency = Hash.new(0)
            highest_wf_count = Hash.new(0)
            highest_wf_words = Hash.new(0)
            words.each { |word| frequency[word]+= 1}
            #puts "The frequency of words in a line : #{frequency}"
            highest_wf_count=frequency.max_by {|k,v| v}
            highest_wf_words=frequency.max_by {|k,v| k}
            collect=highest_wf_count,linenumber
            return collect
           #puts "The highest number of times a word appered: #{highest_wf_count} and linenumber is #{linenumber}"

      end

    

  # This function displays highest number of times a word appered in file
      def highest_word_frequency(file)
            frequencies=Hash.new (0)
            words = file.split(" ")
            words.each { |word| frequencies[word]+= 1}
            @max_string = frequencies.max_by(&:last)
            #print "\n Highest frequency word among all lines:\n #{@max_string}"
           return @max_string
            
      end

end