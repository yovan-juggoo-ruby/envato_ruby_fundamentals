def add_and_power a,b,c
  (a+b)**c
end

puts "First integer: "
input1 = gets

puts "Second integer: "
input2 = gets

puts "Third integer: "
input3 = gets

puts "The result is: "
puts add_and_power input1.to_i,input2.to_i,input3.to_i