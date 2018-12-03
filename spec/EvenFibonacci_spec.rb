describe 'EvenFibonacci' do

  before(:all) do
    @ef = EvenFibonacci.new
    @ef.make_fibonacci_array
  end

  it "should return the correct fibonacci array with correct length" do
    expect(@ef.fibonacci_array[7]).to be 13
    expect(@ef.fibonacci_array[9]).to be 34
    expect(@ef.fibonacci_array[17]).to be 1597
  end
  it "should return the correct sum" do
    expect(@ef.even_sum).to eq 4613732
  end

end
