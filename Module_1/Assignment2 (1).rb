class LineAnalyzer
  attr_reader :highest_wf_count,:highest_wf_words,:content,:line_number
    def highest_wf_count= (new_highest_wf_count) 
     @highest_wf_count = new_highest_wf_count 
   end 
   def highest_wf_words= (new_highest_wf_words) 
     @highest_wf_words = new_highest_wf_words 
   end 
   def content= (new_content) 
     @content = new_content 
   end 
   def line_number= (new_line_number) 
     @line_number = new_line_number 
   end 
   def initialize(text,linenum)
     @text=text
     @linenum=linenum
     calculate_word_frequency();
    end
  def calculate_word_frequency()
   array=Array.new
   array=@text.split
   @highest_wf_count=Hash.new(0)
   @highest_wf_words=Hash.new 
   array.each do |v|
         @highest_wf_count[v] += 1
       end
       @highest_wf_count.each do |k, v|
       @highest_wf_words=@highest_wf_count.max_by{|k,v| v}
        end
        puts @highest_wf_count
        puts @highest_wf_words
  end
end 
obj_of_lineanalyzer=LineAnalyzer.new("this is is this is this karna karna karna karna",3)
puts obj_of_lineanalyzer.calculate_word_frequency()

class Solution<LineAnalyzer
 attr_reader :analyzers,:highest_count_across_lines,:highest_count_words_across_lines
 def analyzers= (new_analyzers) 
    @analyzers = new_analyzers 
  end 
  def highest_count_across_lines= (new_highest_count_across_lines) 
    @highest_count_across_lines = new_highest_count_across_lines
  end
  def highest_count_words_across_lines= (new_highest_count_words_across_lines) 
    @highest_count_words_across_lines = new_highest_count_words_across_lines 
  end

 def initialize()
  @analyzers=[]
 end
  def analyze_file()
 @max_frequency_count = []
   File.open("C:/Users/karnat/Example/text1.txt").each do |line|
  @analyzers.push(line.split(" "))
  end
  p @analyzers
  calculate_line_with_highest_frequency();
end
  
  def calculate_line_with_highest_frequency()
    line_number=0    
  for line in @analyzers
  frequency_count = Hash.new(0)  
  for word in line
  frequency_count[word]+=1  
  end
  @max_frequency_count.push(frequency_count.max_by{|key,value| value})  
  end
  print "\n Maximum frequency wordin each line:\n"
  @max_frequency_count.each_with_index {|k,v| p k;p line_number+=1}    
  @max_string = @max_frequency_count.max_by(&:last)
  print "\nHighest frequency word among all lines:\n#{@max_string}"
  end
  def print_highest_word_frequency_across_lines()
  end
end
object_solution=Solution.new
puts object_solution.analyze_file()


