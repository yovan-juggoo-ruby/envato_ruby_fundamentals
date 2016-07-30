print 'Enter your car model: '
car_model = gets.strip
output = case car_model
when 'Focus', 'Fiesta' then 'Ford'
when 'Ibiza' then 'Seat'
when 'Civic' then 'Honda'
else 'Unknown model'
end
puts "The car company for  #{car_model} is: " , output

puts "Please enter you role: Example 0 for Admin, \n1 for Manager, \n2 for Supervisor, \n3 for Sales person, \n4 for Client"
name = gets.strip.to_i
message = 'Welcome. You have logged in as: '
discount = 0
item_price = 250
case name
when 0 then discount = 100
  puts 'Congrats you have a discount of 100%'
when 1 then discount = 75.5
  puts 'You can accumulate points that not taking discount.'
when 2 then discount = 50.9
  puts 'Half a discount...That is nice!'
when 3 then discount = 92
  puts 'Could have given you 100%.'
when 4 then discount = 23.60
  puts 'You should be happy for the discount!'
else discount = 5
end
puts 'The discount: ', discount
puts "The price paid for the article costing #{item_price} : ", item_price - (discount / 100.0 * item_price)
