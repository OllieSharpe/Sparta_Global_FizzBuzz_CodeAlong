describe 'ThreeAndFive' do

  before(:all) do
    @taf = ThreeAndFive.new
  end

  it "should repond true if the number is divisable by the given number (testing 3 and 5)" do
    expect(@taf.multiple_of_given?(9,3)).to be(true)
    expect(@taf.multiple_of_given?(15,5)).to be(true)
  end

  it "should repond false if the number is not divisable by the given number (testing 3 and 5)" do
    expect(@taf.multiple_of_given?(10,3)).to be(false)
    expect(@taf.multiple_of_given?(16,5)).to be(false)
  end

  it "should create a correctly formatted array" do
    @taf.return_multiples_array
    expect(@taf.multiples_array[0]).to eq 3
    expect(@taf.multiples_array[1]).to eq 5
    expect(@taf.multiples_array[2]).to eq 6
  end

  it "should return the correct value" do
    @taf.return_multiples_array
    expect(@taf.summate_array).to eq 233168
  end

end
