1.times { puts "Hello World!" }   
# => Hello World! 

2.times do |index|
  puts index 
end 
# => 1

2.times { |index| puts index if index > 0 }
# => 1
