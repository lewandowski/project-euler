#
# Autor: Fernando Lewandowski Albuquerque 
# Email: fernando.lewandowski@gmail.com 
# Repository: https://github.com/lewandowski/project-euler
#
#Problem 6
#14 December 2001
#
#The sum of the squares of the first ten natural numbers is,
#
#1 exp 2 + 2 exp 2 + ... + 10 exp 2 = 385
#The square of the sum of the first ten natural numbers is,
#
#(1 + 2 + ... + 10) exp 2 = 55 exp 2 = 3025
#Hence the difference between the sum of the squares of the first ten natural 
#numbers and the square of the sum is 3025  385 = 2640.
#
#Find the difference between the sum of the squares of the first one hundred 
#natural numbers and the square of the sum.
#
# Answer: 
#

class Problem6
  
  def initialize value
    @value = value
  end
  
  def calculate
    @value
  end  
  
end

if ARGV.nil? || ARGV.empty?
  puts "First enter a number."
else
  puts Time.now
  puts "The difference between the sum of the squares of the first #{ARGV.first.to_i} natural numbers and the square of the sum is #{Problem6.new(ARGV.first.to_i).calculate}"
  puts Time.now
end