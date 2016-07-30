#Input age
print "Enter age: "
age = gets.to_i

#process age
output = if age < 12
  "You are a young person."
elsif age < 19
  "You are a teenager."
elsif age < 60
  "You are an adult."
elsif age < 95
  "You are an old person."
else
  "Are you still alive?"
end

# Output message
puts output

puts "You must be a working person." unless (age < 19 || age > 59)
puts "You must like Pokemon." if age < 12
