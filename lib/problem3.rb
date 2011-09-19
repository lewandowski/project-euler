#
# Autor: Fernando Lewandowski Albuquerque 
# Email: fernando.lewandowski@gmail.com 
# Repository: https://github.com/lewandowski/project-euler
#
#Problem 3
#02 November 2001
#
#The prime factors of 13195 are 5, 7, 13 and 29.
#
#What is the largest prime factor of the number 600851475143 ?
#
#Answer: 6857
#

require_relative 'prime_number_crivo_erastotenes'

class Problem3
  include MathModule::FactoringModule
  
  def initialize value
    @value = value
    @prime_factors = []
    init
  end
  
  def calculate

    array_prime_factors = factoring @value, @prime_numbers.first, @prime_numbers, @prime_factors
    array_prime_factors
    
  end
  
  private
  
    def init
      @prime_numbers = PrimeNumberCrivoErastotenes.new(Math.sqrt(@value)).calculate
    end
  
end

if ARGV.nil? || ARGV.empty?
  puts "First enter a number."
else
  puts Time.now
  array = Problem3.new(ARGV.first.to_i).calculate
  puts "@prime_factors => #{array}"
  puts "The largest prime factor of the number is #{array.last}" if array
  puts Time.now
end