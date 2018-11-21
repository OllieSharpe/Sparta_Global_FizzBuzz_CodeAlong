class EvenFibonacci
  attr_accessor :fibonacci_array, :even_array

  def initialize
    @fibonacci_array = [0,1]
    @even_array = []
  end

  def make_fibonacci_array
    @fibonacci_array = [0,1]
    pos = 1
    max = 4000000
    i = 0
    while i < max
      i = @fibonacci_array[pos] + @fibonacci_array[pos - 1]
      @fibonacci_array << i
      pos += 1
    end
    return @fibonacci_array
  end

  def even_check(num)
    num.even?
  end

  def remove_odds
    @even_array = []
    for i in 0..(@fibonacci_array.length - 1)do
      if (even_check(@fibonacci_array[i]))
        @even_array << @fibonacci_array[i]
      end
    end
    return @even_array
  end

  def summate_array(array)
    array.inject(:+)
  end

end

new = EvenFibonacci.new
new.make_fibonacci_array
new.remove_odds
print new.summate_array(new.even_array)
