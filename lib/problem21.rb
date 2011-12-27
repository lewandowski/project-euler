#
# Autor: Fernando Lewandowski Albuquerque 
# Email: fernando.lewandowski@gmail.com 
# Repository: https://github.com/lewandowski/project-euler
#
#Problem 21
#05 July 2002
#
#Let d(n) be defined as the sum of proper divisors of n (numbers less than n 
#which divide evenly into n).
#If d(a) = b and d(b) = a, where a != b, then a and b are an amicable pair and 
#each of a and b are called amicable numbers.
#
#For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 
#55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 
#71 and 142; so d(284) = 220.
#
#Evaluate the sum of all the amicable numbers under 10000.
#
# Answer: 31626
#

require_relative 'math_module'

class Problem21
  include MathModule::DivisorModule
  
  def initialize number=0
    @number = number
  end
  
  def calculate
    
    amicable_numbers = []
    @number.downto(1) do |n| 
      
      d1 = divisors(n, false)
      sum1 = 0
      d1.collect { |i| sum1 += i  }  if d1 && !d1.empty? #sum1=284-6
    
      d2 = divisors(sum1, false) #n=284-6
      sum2 = 0
      d2.collect { |i| sum2 += i  } if d2 && !d2.empty? #sum2=220-6
      
      if n == sum2 && sum1 != sum2
        amicable_numbers << n
      end
      
    end
    
    sum_amicable_numbers = 0
    amicable_numbers.collect { |i| sum_amicable_numbers += i }
    sum_amicable_numbers
    
  end
  
end

puts Time.now
puts "The sum of all the amicable numbers under #{ARGV[0].to_i} is #{Problem21.new(ARGV[0].to_i).calculate}"
puts Time.now