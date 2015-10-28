require 'rspec'
require_relative  '../LineAnalyzer'

describe LineAnalyzer do
  before { @lineanalyzer = LineAnalyzer.new}

  it "get frequency count of each line" do
  	expect { @lineanalyzer.calculate_word_frequency("Hi Huraay Hi Hi",1) }.should include(["Hi",3],["Hurray",1])
  
  #expect(@lineanalyzer.calculate_word_frequency("Hi Huraay Hi Hi",1)).to output( '["man", 4] and linenumber is 1').to_stdout
  end

  it "get frequency count of complete data" do
  expect(@lineanalyzer.highest_word_frquency("man at defects cent cent")).to output_stdout ["cent", 2] 
end



end
     

       
#to include(include('foo' => '2'))


   

