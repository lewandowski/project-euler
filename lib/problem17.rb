#
# Autor: Fernando Lewandowski Albuquerque 
# Email: fernando.lewandowski@gmail.com 
# Repository: https://github.com/lewandowski/project-euler
#
#Problem 17
#17 May 2002
#
#If the numbers 1 to 5 are written out in words: one, two, three, four, five, 
#then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#
#If all the numbers from 1 to 1000 (one thousand) inclusive were written out in 
#words, how many letters would be used?
#
#
#NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and 
#forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 
#letters. The use of "and" when writing out numbers is in compliance with 
#British usage.
#
# Answer: 
#

class Problem17
  
  def initialize 
  end
  
  def calculate
  end
  
end

if ARGV.nil? || ARGV.empty?
  puts "First enter a number."
else
  puts Time.now
  puts "The sum of the digits of the number 2**#{ARGV[0].to_i} is #{Problem17.new(ARGV[0].to_i).calculate}."  
  puts Time.now
end