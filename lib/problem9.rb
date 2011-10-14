#
# Autor: Fernando Lewandowski Albuquerque 
# Email: fernando.lewandowski@gmail.com 
# Repository: https://github.com/lewandowski/project-euler
#
#Problem 9
#25 January 2002
#
#A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
#
#a exp 2 + b exp 2 = c exp 2
#For example, 3 exp 2 + 4 exp 2 = 9 + 16 = 25 = 5 exp 2.
#
#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.
#
# Answer: 31875000
#
class Problem9
  
  def initialize v=0
    @v = v
  end
  
  def calculate
    product = 0
    1.upto(998) do |a|
      1.upto(999-a) do |b|
        c = 1000 - a - b
        if a**2 + b**2 == c**2
          puts "a=#{a} :: b=#{b} :: c=#{c}" 
          return a * b * c
        end
      end
    end
  end
  
end

#if ARGV.nil? || ARGV.empty?
#  puts "First enter a number."
#else
  puts Time.now
  puts "The product abc is #{Problem9.new().calculate}"
  puts Time.now
#end