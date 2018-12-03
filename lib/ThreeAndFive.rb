class ThreeAndFive
  attr_accessor :multiples_array

  def initialize
    @multiples_array = []
  end

  #return true if number is multiple of given number
  def multiple_of_given?(number, given)
    number % given == 0
  end

  #return array of multiples of 3 and 5
  def return_multiples_array
    @multiples_array = []
    for i in 1..(1000 - 1)
      if multiple_of_given?(i, 3) or multiple_of_given?(i, 5)
        @multiples_array << i
      end
    end
  end

  #summate the values in the array
  def summate_array
    @multiples_array.inject(:+)
  end

end
