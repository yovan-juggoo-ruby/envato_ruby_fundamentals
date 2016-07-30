#Enter age
puts "Please enter your age: "
age = gets.to_i

#Process age
message = "You are"
if(age < 12)
  message += " a young person."
elsif(age < 19)
  message += " a teenager."
elsif(age < 60)
  message += " an adult."
elsif(age < 95)
  message +=  " an old person."
else
  message =  "Are you still alive?"
end

#Output message
puts message

