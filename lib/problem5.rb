#
# Autor: Fernando Lewandowski Albuquerque 
# Email: fernando.lewandowski@gmail.com 
# Repository: https://github.com/lewandowski/project-euler
#
# Problem 5
# 30 November 2001
#
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
#
# Answer: 
#

class Problem5
  
  def initialize value
    @value = value
  end
  
  def calculate

  end
  
end

if ARGV.nil? || ARGV.empty?
  puts "First enter a number."
else
  puts Time.now
#  puts "The largest palindromic number of numbers #{ARGV.first.to_i} e #{ARGV.last.to_i} is #{Problem4.new(ARGV.first.to_i, ARGV.last.to_i).calculate}"
  puts Time.now
end