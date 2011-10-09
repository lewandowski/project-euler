# To change this template, choose Tools | Templates
# and open the template in the editor.

require 'fibonacci'

describe Fibonacci do
  
  before(:each) do
    @fibonacci = Fibonacci.new(15)
  end

#  it "should desc" do
#    @fibonacci.should be_valid
#  end
  
  it "should be invalid without a number" do
    lambda {
#      list = create_list(:title => nil)
      fibonacci = create_fibonacci
      list.errors.should be_invalid(:title)
    }.should_not change(List, :count)
  end  
  
  private
    def create_fibonacci(options={})
      @fibonacci.should be_valid
    end  
  
end

