#
# Autor: Fernando Lewandowski Albuquerque 
# Email: fernando.lewandowski@gmail.com 
# Repository: https://github.com/lewandowski/project-euler
#
#Problem 20
#21 June 2002
#
#n! means n x (n - 1) x ... x 3 x 2 x 1
#
#For example, 10! = 10 x 9 x ... x 3 x 2 x 1 = 3628800,
#and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#
#Find the sum of the digits in the number 100!
#
# Answer: 648
#

require_relative 'math_module'

class Problem20
  include MathModule::FactorialModule
  
  def initialize number
    @number = number
  end
  
  def calculate
    sum = 0
    f = factorial(@number)
    f.to_s.each_char { |cstr| sum += cstr.to_i }
    sum
  end
  
end

puts Time.now
puts "The sum of the digits in the number #{ARGV[0].to_i}! is #{Problem20.new(ARGV[0].to_i).calculate}"
puts Time.now