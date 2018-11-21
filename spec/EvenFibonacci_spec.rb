describe 'EvenFibonacci' do

  before(:all) do
    @ef = EvenFibonacci.new
    @ef.make_fibonacci_array
    @ef.remove_odds
  end

  it "should return true if a number is even" do
    expect(@ef.even_check(14)).to be true
  end
  it "should return false if a number is odd" do
    expect(@ef.even_check(13)).to be false
  end
  it "should return the correct fibonacci array with correct length" do
    expect(@ef.fibonacci_array[7]).to be 13
    expect(@ef.fibonacci_array[9]).to be 34
    expect(@ef.fibonacci_array[17]).to be 1597
  end
  it "should correctly return an even only fibonacci array" do
    expect(@ef.even_array[2]).to be 8
    expect(@ef.even_array[4]).to be 144
    expect(@ef.even_array[8]).to be 46368
  end
  it "should return the correct sum" do
    expect(@ef.summate_array(@ef.even_array)).to eq 4613732
  end

end
