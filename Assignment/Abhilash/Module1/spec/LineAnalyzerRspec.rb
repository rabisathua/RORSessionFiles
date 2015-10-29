require 'rspec'
require_relative '../LineAnalyzer'


describe LineAnalyzer do
before {@lineanalyzer =LineAnalyzer.new}

it "shoud give frequency of words in whole text" do
data="cent can be one \n most of cent \n cent "
expect(@lineanalyzer.highest_word_frequency(data)).to eq ["cent", 3]
end

it "shoud give frequency of words in line" do
 linecount=0
     File.open("textfile.txt") do |f|
          f.each_line do |line|
           linecount+=1
   expect(@lineanalyzer.calculate_word_frequency(line,linecount)).to eq   [["man",4] ,1] 
  break
  
end
 end
  end      

end

  




   

