#
# Autor: Fernando Lewandowski Albuquerque 
# Email: fernando.lewandowski@gmail.com 
# Repository: https://github.com/lewandowski/project-euler
#
#Problem 23
#02 August 2002
#
#A perfect number is a number for which the sum of its proper divisors is 
#exactly equal to the number. For example, the sum of the proper divisors 
#of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.
#
#A number n is called deficient if the sum of its proper divisors is less 
#than n and it is called abundant if this sum exceeds n.
#
#As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest 
#number that can be written as the sum of two abundant numbers is 24. By 
#mathematical analysis, it can be shown that all integers greater than 28123 
#can be written as the sum of two abundant numbers. However, this upper limit 
#cannot be reduced any further by analysis even though it is known that the 
#greatest number that cannot be expressed as the sum of two abundant numbers 
#is less than this limit.
#
#Find the sum of all the positive integers which cannot be written as the sum 
#of two abundant numbers.
#
# Answer: 
#

require_relative 'math_module'

class Problem23
  include MathModule::MathematicalAnalysisModule
  include MathModule::DivisorModule
    
  @@UPPER_LIMIT = 28123
  @@LOWER_LIMIT = 25
  
  def initialize
  end
  
  def calculate
    a = []
    @@UPPER_LIMIT.downto(@@LOWER_LIMIT) do |i|
      a << i if abundant_number?(i)
    end
    @@UPPER_LIMIT.downto(@@LOWER_LIMIT) do |i|
      d = divisors(i)
    end    
#    puts a.inspect
  end
  
end

puts Time.now
puts "The total of all the name scores in the file is #{Problem23.new().calculate}"
puts Time.now