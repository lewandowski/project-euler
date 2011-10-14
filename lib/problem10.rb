#
# Autor: Fernando Lewandowski Albuquerque 
# Email: fernando.lewandowski@gmail.com 
# Repository: https://github.com/lewandowski/project-euler
#
#Problem 10
#08 February 2002
#
#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
#Find the sum of all the primes below two million.
#
# Answer: 142913828922
#
require_relative 'prime_number_crivo_erastotenes'

class Problem10
  
  def initialize v1=0
    @value_1 = v1
  end
  
  def calculate
    array = PrimeNumberCrivoErastotenes.new(@value_1).calculate
    total = 0
    array.each do |a|
      total += a
    end
    total
  end
  
end

if ARGV.nil? || ARGV.empty?
  puts "First enter a number."
else
  puts Time.now
  puts "The sum of #{ARGV[0].to_i} prime numbers is #{Problem10.new(ARGV[0].to_i).calculate}"
  puts Time.now
end