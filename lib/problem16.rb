#
# Autor: Fernando Lewandowski Albuquerque 
# Email: fernando.lewandowski@gmail.com 
# Repository: https://github.com/lewandowski/project-euler
#
#Problem 16
#03 May 2002
#
#2**15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
#
#What is the sum of the digits of the number 2**1000?
#
# Answer: 1366
#

class Problem16
  
  def initialize pot
    @pot = pot
  end
  
  def calculate
    sum = 0
    (2 ** @pot).to_s.each_char { |cstr| sum += cstr.to_i }
    sum
  end
  
end

if ARGV.nil? || ARGV.empty?
  puts "First enter a number."
else
  puts Time.now
  puts "The sum of the digits of the number 2**#{ARGV[0].to_i} is #{Problem16.new(ARGV[0].to_i).calculate}."  
  puts Time.now
end