require_relative '../lib/FizzBuzz'
require_relative '../lib/ThreeAndFive'
require_relative '../lib/EvenFibonacci'

RSpec.configure do |config|
  config.formatter = :documentation
end
