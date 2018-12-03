describe  'project euler to test fibonacci even numbers' do
  before(:each) do
    @fibonacci = Fibonacci.new
  end
  it "should contain array of 1,2,3" do
    expect(@fibonacci.fib_array).to match([1,2,3])
  end
  it "should respond with the total of 231 for the first 10 terms of the fib_array" do
    @fibonacci.fib_creator(10)
    expect(@fibonacci.summate_array(@fibonacci.fib_array)).to eq 231
  end
  it "text" do
    @fibonacci.fib_creator(10)
    expect(@fibonacci.sum_of_even).to eq 44
  end
end
