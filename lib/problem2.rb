#
# Autor: Fernando Lewandowski Albuquerque fernando.lewandowski@gmail.com https://github.com/lewandowski/project-euler
#
#Problem 2
#19 October 2001
#
#Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
#
#1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
#By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
#
#Answer: 4613732
#
#We need to add the even numbers terms 2 + 8 + 34, …
#
class Problem2
  
  def initialize maximum_value
    @maximum_value = maximum_value
  end
  
  def sum

    require_relative 'fibonacci'

    array = Fibonacci.new(@maximum_value).calculate_fibonacci
    
    sum = 0
    array.each do |fibonacci_number|
      sum += fibonacci_number if fibonacci_number.even?
    end
    
    sum    
    
  end
  
end

puts "Sum of even fibonacci therms is #{Problem2.new(4000000).sum}"