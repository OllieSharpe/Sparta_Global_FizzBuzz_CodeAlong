require 'prime'
class LargestPrime

  attr_accessor :start, :finish

  def initialize
    @start = 0
    @finish = 0
  end

  def largest_prime(number)
    @start = Time.now
    value = 0
    for i in 1..number
      if (number % i == 0)
        if ((number/i).prime?)
          value = number/i
          @finish = Time.now
          break
        end
      end
    end
    return value
  end

end

# new = LargestPrime.new
# print new.largest_prime(600851475143)
# diff = new.finish - new.start
# print "\n"
# print diff
