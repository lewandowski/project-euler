#
# Autor: Fernando Lewandowski Albuquerque 
# Email: fernando.lewandowski@gmail.com 
# Repository: https://github.com/lewandowski/project-euler
#
#Problem 12
#08 March 2002
#
#The sequence of triangle numbers is generated by adding the natural numbers. So 
#the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten 
#terms would be:
#
#1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
#
#Let us list the factors of the first seven triangle numbers:
#
# 1: 1
# 3: 1,3
# 6: 1,2,3,6
#10: 1,2,5,10
#15: 1,3,5,15
#21: 1,3,7,21
#28: 1,2,4,7,14,28
#We can see that 28 is the first triangle number to have over five divisors.
#
#What is the value of the first triangle number to have over five hundred divisors?
#
# Answer: 76576500 (TODO with over 500 divisors the processing spend it almost 5 hours of processing!!!)
#

require_relative 'math_module'

class Problem12
  include MathModule::DivisorModule
  
  def initialize limit
    @limit = limit
  end
  
  def calculate
    
    c = 2
    n = 1
    array_factors = []

    loop do
      array_factors = divisors(n)
      break if array_factors.size > @limit
      n += c
      c += 1      
    end
    
    n
    
  end
  
end

if ARGV.nil? || ARGV.empty?
  puts "First enter a number."
else
  puts Time.now
  puts "The value of the first triangle number to have over #{ARGV.first.to_i} divisors is #{Problem12.new(ARGV.first.to_i).calculate}"
  puts Time.now
end