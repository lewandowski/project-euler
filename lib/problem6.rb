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
# Answer: 25164150
#
require_relative 'math_module'

class Problem6
  include MathModule::Progression::Arithimetic
  
  def initialize v1, v2, r=1, pot=2
    @value_1 = v1
    @value_2 = v2
    @r = r
    @pot = pot
  end
  
  def sum_of_squares
    tot = 0
    @value_1.upto(@value_2) do |v|
      tot += (v**@pot)
    end
    tot
  end
  
  def calculate_square_of_sum
    sum_pa(@value_1, @value_2, @r) ** @pot
  end

  def calculate
    calculate_square_of_sum - sum_of_squares
  end
  
end

if ARGV.nil? || ARGV.empty?
  puts "First enter a number."
else
  puts Time.now
  puts "The difference between the sum of the squares of the first #{ARGV[0].to_i} and #{ARGV[1].to_i}  natural numbers and the square of the sum is #{Problem6.new(ARGV[0].to_i, ARGV[1].to_i, ARGV[2].to_i, ARGV[3].to_i).calculate}"
  puts Time.now
end