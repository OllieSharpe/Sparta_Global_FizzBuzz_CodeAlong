require 'prime'
describe 'LargestPrime' do

  before(:all) do
    @lp = LargestPrime.new
  end

  it "should return the correct value of the largest prime number" do
    expect(@lp.largest_prime(600851475143)).to eq 6857
  end
end
