require 'rspec'
require_relative '../Solution'

describe Solution do
  before { @solution = Solution.new('test.txt')}  
  it "should give maximum word frequency from each line" do
  	lineanalyzers = []
  	File.open("test.txt","r").each_line do |word|			
			lineanalyzers.push(word.strip.split(" "))
  	end  	
  	expect(@solution.calculate_line_with_highest_frequency(lineanalyzers)).to eq @solution.highest_count_across_lineanalyzers
  end
  it "should give highest word frequency from line analyzer" do  	
  	expect(@solution.print_highest_word_frequency_across_lineanalyzers(@solution.highest_wf_count,@solution.highest_wf_words)).to eq @solution.highest_count_words_across_lineanalyzers
  end  	 
end