describe 'FizzBuzz' do


  before(:all) do
    @fb = FizzBuzz.new
  end

  it "should repond true if the number is divisable by the given number (testing 3 and 5)" do
    expect(@fb.divisable_by_given?(9,3)).to be(true)
    expect(@fb.divisable_by_given?(15,5)).to be(true)
  end

  it "should repond false if the number is not divisable by the given number (testing 3 and 5)" do
    expect(@fb.divisable_by_given?(10,3)).to be(false)
    expect(@fb.divisable_by_given?(16,5)).to be(false)
  end

  it "should correctly apply FizzBuzz to a given range" do
    @fb.fizzbuzz_iterator(1,15)
    expect(@fb.fizzbuzz_array[0]).to eq 1
    expect(@fb.fizzbuzz_array[-1]).to eq 'FizzBuzz'
    expect(@fb.fizzbuzz_array[2]).to eq 'Fizz'
    expect(@fb.fizzbuzz_array[4]).to eq 'Buzz'
    expect(@fb.fizzbuzz_array.length).to eq 15
  end

end
