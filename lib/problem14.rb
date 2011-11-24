#
# Autor: Fernando Lewandowski Albuquerque 
# Email: fernando.lewandowski@gmail.com 
# Repository: https://github.com/lewandowski/project-euler
#
# Problem 14
#05 April 2002
#
#The following iterative sequence is defined for the set of positive integers:
#
#n -> n/2 (n is even)
#n -> 3n + 1 (n is odd)
#
#Using the rule above and starting with 13, we generate the following sequence:
#
#13 -> 40 -> 20 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1
#It can be seen that this sequence (starting at 13 and finishing at 1) contains 
#10 terms. Although it has not been proved yet (Collatz Problem), it is thought 
#that all starting numbers finish at 1.
#
#Which starting number, under one million, produces the longest chain?
#
#NOTE: Once the chain starts the terms are allowed to go above one million.
#
# Answer: 837799
#

require_relative 'math_module'

class Problem14
  include MathModule::CollatzModule
  
  def initialize limit
    @limit = limit
  end
  
  def calculate
    
    s = 0
    z = 0
    @limit.downto(1) do |x|
      a = []
      size = collatz_fn_gen(x, a).size
      if size > s
        s = size 
        z = x
      end
#      puts "[#{s}] size=#{size} The chain of value #{x} is a=#{a.inspect}"      
    end

    z
    
  end
  
end

if ARGV.nil? || ARGV.empty?
  puts "First enter a number."
else
  puts Time.now
  puts "Which starting number, under #{ARGV[0].to_i}, the longest chain is #{Problem14.new(ARGV[0].to_i).calculate}"  
  puts Time.now
end