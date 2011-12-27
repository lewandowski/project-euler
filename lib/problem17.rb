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
# Answer: 21124
#

require_relative 'number_full_module'

class Problem17
  include NumberFullModule
  
  def initialize limit, locale="en"
    @limit = limit
    @locale = locale
  end
  
  def calculate
    
    c = 0
    1.upto(@limit) do |i|
      str = NumberFull.new(i, @locale).calculate
      str.gsub!(" ", "")
      str.gsub!("-", "")
#      puts "#{i}=#{str}"
      c += str.size
    end
    c
    
#    c = 0
#    1.upto(@limit) do |i|
#      str = NumberFull.new(i, "pt_br").calculate
#      puts str
#      str = NumberFull.new(i, "en").calculate
#      puts str
#      puts "==================================="
#      str.gsub!(" ", "")
#      str.gsub!("-", "")
#      c += str.size
#    end
#    c    
    
  end
  
end

if ARGV.nil? || ARGV.empty?
  puts "First enter a number."
else
  puts Time.now
  puts "If all the numbers from 1 to #{ARGV[0].to_i} inclusive were written out in words, will be used #{Problem17.new(ARGV[0].to_i, ARGV[1]).calculate} letters."  
  puts Time.now
end