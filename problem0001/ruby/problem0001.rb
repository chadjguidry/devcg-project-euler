############################################################################### 
# Project Euler Problem 0001                                                  #
#                                                                             # 
# If we list all the natural numbers below 10 that are multiples of 3 or 5,   # 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.                     #
#                                                                             #
# Find the sum of all the multiples of 3 or 5 below 1000.                     #
###############################################################################
# Tag the start time
start_time = Time.now

# Initialize sum variable
sum = 0

# Start at 3
x = 3
while x < 1000
  if x % 3 == 0 or x % 5 == 0 
    sum = sum + x 
  end
  x = x + 1
end

# Tag the end time
end_time = Time.now

puts "The answer is #{sum}."
puts "Elapsed time: #{((end_time - start_time)*1000).round(3)} milliseconds."
