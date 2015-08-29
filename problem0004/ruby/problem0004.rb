###############################################################################
# Project Euler Problem 0004                                                  #
#                                                                             #
# A palindromic number reads the same both ways. The largest palindrome made  #
# from the product of two 2-digit numbers is 9009 = 91 × 99.                  #
#                                                                             #
# Find the largest palindrome made from the product of two 3-digit numbers.   #
###############################################################################

# Tag start time
start_time = Time.now

upper_limit = 999 * 999
lower_limit = 100 * 100
palindromes = Array.new
answer = 0

def find_3_digit_factors(number)
  limit = Math.sqrt(number)
  x = 100
  factors = Array.new

  while x <= limit
    if number % x == 0 && (number / x > 99 && number / x < 1000)
      factors.push x
      factors.push number / x
    end
    x = x + 1
  end
  return factors
end
status = true
while upper_limit > lower_limit 
  if upper_limit.to_s.reverse == upper_limit.to_s
    palindromes.push(upper_limit)
  end
  upper_limit -= 1
end

palindromes.each do |p| 
  if find_3_digit_factors(p).count == 2
    answer = p
    break
  end
end

end_time = Time.now

puts "The answer is #{answer}."
puts "Elapsed time: #{((end_time - start_time)*1000).round(3)} milliseconds."
