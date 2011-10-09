#
# Autor: Fernando Lewandowski Albuquerque 
# Email: fernando.lewandowski@gmail.com 
# Repository: https://github.com/lewandowski/project-euler
#
# Problem 5
# 30 November 2001
#
# 2520 is the smallest number that can be divided by each of the numbers 
# from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all 
# of the numbers from 1 to 20?
#
# Answer: 232792560
#

class Problem5
  
  def initialize value_1, value_2
    @value_1 = value_1
    @value_2 = value_2
  end
  
#  occurs stack deep with recursivity  
#  def calculate n=@value_2
#  
#    nn = n
#    
#    @value_1.upto(@value_2) do |i|
#      if n % i == 0
#        nn = n
#      else
#        nn = calculate(n+1)
#        break
#      end
#    end    
#    
#    nn
#    
#  end
  
  def calculate n=@value_2
  
    nn = n

    loop do 

      found = true
      
      @value_1.upto(@value_2) do |i|
        unless nn % i == 0
          nn += 1
          found = false
          break
        end
      end    

      break if found
      
    end
    
    nn
    
  end  
  
end

if ARGV.nil? || ARGV.empty?
  puts "First enter a number."
else
  puts Time.now
  puts "The smallest positive number that is evenly divisible by all of the numbers from #{ARGV.first.to_i} to #{ARGV.last.to_i} is #{Problem5.new(ARGV.first.to_i, ARGV.last.to_i).calculate}"
  puts Time.now
end