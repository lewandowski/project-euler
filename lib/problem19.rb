#
# Autor: Fernando Lewandowski Albuquerque 
# Email: fernando.lewandowski@gmail.com 
# Repository: https://github.com/lewandowski/project-euler
#
#Problem 19
#14 June 2002
#
#You are given the following information, but you may prefer to do some 
#research for yourself.
#
# * 1 Jan 1900 was a Monday.
# * Thirty days has September,
#   April, June and November.
#   All the rest have thirty-one,
#   Saving February alone,
#   Which has twenty-eight, rain or shine.
#   And on leap years, twenty-nine.
# * A leap year occurs on any year evenly divisible by 4, but not on a century 
#   unless it is divisible by 400.
#   How many Sundays fell on the first of the month during the twentieth 
#   century (1 Jan 1901 to 31 Dec 2000)?
#
# Answer: 171
#

class Problem19
  
  DAY_IN_SECONDS = 60 * 60 * 24
  
  def initialize
    @t = Time.new(1901,01,1,0,0,0, "-05:00") # EST (Detroit)      
  end
  
  def calculate
    c = 0
    loop do
      next_day
      c += 1 if @t.day == 1 && @t.sunday?
      break if @t.day == 31 && @t.month == 12 && @t.year == 2000
    end
    c
  end
  
  def next_day
    @t = @t + DAY_IN_SECONDS
  end
  
end

puts Time.now
puts "The total of Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000) is #{Problem19.new().calculate}."
puts Time.now