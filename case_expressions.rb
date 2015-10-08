age = 12

case # 1ST FLAVOR
  when age>=33
    puts "You can buy a drink" 
  when 1==0
    puts "Written by a drunk programmer"  
  else 
    puts "Default condition"
end 
# => You can buy a drink

name = 'abcFishery' 
case name # 2nd FLAVOR
  when /fish/i then puts "Something is fishy here"
  when 'Smith' then puts "Your name is Smith"
end

#=> Something is fishy here

