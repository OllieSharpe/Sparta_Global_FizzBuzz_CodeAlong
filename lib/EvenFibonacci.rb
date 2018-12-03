class EvenFibonacci
  attr_accessor :fibonacci_array, :even_array

  def initialize
    @fibonacci_array = [0,1]
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

  def even_sum
    even_sum = 0
    for i in 0..(@fibonacci_array.length - 1)do
      if ((@fibonacci_array[i]).even?)
        even_sum += @fibonacci_array[i]
      end
    end
    return even_sum
  end

end

new = EvenFibonacci.new
print new.make_fibonacci_array
print new.even_sum
