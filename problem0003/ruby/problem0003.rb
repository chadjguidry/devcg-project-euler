###############################################################################
# Project Euler Problem 0003                                                  #
# The prime factors of 13195 are 5, 7, 13 and 29.                             #
#                                                                             #
# What is the largest prime factor of the number 600851475143 ?               #
###############################################################################

# Tag start time
start_time = Time.now

# Factorial Function
def find_factors(number)
  limit = Math.sqrt(number)
  x = 1
  factors = Array.new

  while x <= limit
    if number % x == 0
      factors.push x
      factors.push number / x
    end
    x = x + 1
  end
  return factors
end	
# End Factorial Function

# Variables
target = 600851475143 
target_factors = find_factors(target)
prime_factors = Array.new

target_factors.each do |x|
  temp_factors = find_factors(x)
  if temp_factors.count == 2
    prime_factors.push(x)
  end
end

prime_factors.sort!

# Tag the end time
end_time = Time.now

puts "The answer is #{prime_factors.last}."
puts "Elapsed time: #{((end_time - start_time)*1000).round(3)} milliseconds."
