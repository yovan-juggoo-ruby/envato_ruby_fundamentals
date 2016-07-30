# This type of looping is not often used.
number = 0
loop do
  puts "The number inside the loop is #{number}"
  number +=1
  break if number > 15
end
puts "The loop ran 16 times - as we can see 0 is also printed!"

# We use until in most cases
index = 14
until index == 0 do
    puts "The current index is #{index}"
    index = index - 1
end
puts "After the loops the number is #{number} and index is #{index}"

# while also is used in most cases as it is the inverse of until
x = 5
y = Random.rand(10) + 1;
while x != y do
	puts "The value of y: #{y}"
	y = Random.rand(10) + 1;
end
puts "The value of y at the end of the loop is: #{y}"

# loop from 0 to a given integer - We are using the times method of the Fixnum class.
# The argument is an optional placeholder passed to the do function. The current number increments itself automatically by one.
# The number starts at 0
8.times do |current|
	puts "The current number is: #{current}"
end

# Using list.each method to loop through
list = [1,2,3,4,5,6,7,8,9,10,11]
list.each do |current|
	puts "The number is: #{current}"
end

# A range can be a sequence of letters or numbers. 0..15 is a range 0 towards 15.
# This notation creates a range object which includes the enumerable module.
# Here the range object has 16 elements 0-15
(0..15).each do |item|
	puts "The current number is #{item}"
end

# Another way to define a range is by using ..., the last element is not included in the range.
(0...15).each do |item|
	puts "The current number is #{item}"
end

# looping using for
myArray = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
for item in myArray
	puts "The current item in my array is: #{item}"
end

for item in (0...15)
	puts "The current item in my array is: #{item}"
end
