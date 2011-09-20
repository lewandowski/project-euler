# To change this template, choose Tools | Templates
# and open the template in the editor.

require 'fibonacci'

describe Fibonacci do
  before(:each) do
    @fibonacci = Fibonacci.new(15)
  end

  it "should desc" do
    @fibonacci.should be_valid
  end
end

