#
# Autor: Fernando Lewandowski Albuquerque 
# Email: fernando.lewandowski@gmail.com 
# Repository: https://github.com/lewandowski/project-euler
#
#Problem 7
#28 December 2001
#
#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#
#What is the 10001st prime number?
#
# Answer: 104743
#
require_relative 'prime_number_crivo_erastotenes'

class Problem7
  
  def initialize v1
    @value_1 = v1
  end
  
  def calculate
    PrimeNumberCrivoErastotenes.new(@value_1).calculate_ordinal
  end
  
end

if ARGV.nil? || ARGV.empty?
  puts "First enter a number."
else
  puts Time.now
  puts "The #{@value_1} prime number is #{Problem7.new(ARGV[0].to_i).calculate}"
  puts Time.now
end