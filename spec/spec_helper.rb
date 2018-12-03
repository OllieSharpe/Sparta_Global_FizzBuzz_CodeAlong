require_relative '../lib/FizzBuzz'
require_relative '../lib/ThreeAndFive'
require_relative '../lib/EvenFibonacci'
require_relative '../lib/Fibonacci_CodeAlong'
require_relative '../lib/LargestPrime'

RSpec.configure do |config|
  config.formatter = :documentation
end
