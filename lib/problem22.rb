#
# Autor: Fernando Lewandowski Albuquerque 
# Email: fernando.lewandowski@gmail.com 
# Repository: https://github.com/lewandowski/project-euler
#
#Problem 22
#19 July 2002
#
#Using names.txt (right click and 'Save Link/Target As...'), a 46K text file 
#containing over five-thousand first names, begin by sorting it into 
#alphabetical order. Then working out the alphabetical value for each name, 
#multiply this value by its alphabetical position in the list to obtain a name 
#score.
#
#For example, when the list is sorted into alphabetical order, COLIN, which is 
#worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN 
#would obtain a score of 938  53 = 49714.
#
#What is the total of all the name scores in the file?
#
# Answer: 871198282
#

require_relative 'download'

class Problem22
  
  @@ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  
  def initialize
    @names = Download.new().start_download("http://projecteuler.net/project/names.txt").gsub("\"", "").split(",")
    @values = []
    v = []
    @names.sort!
    @names.each { |n| v << [n, string_numerize(n)] } 
    v.sort! {|x,y| x[1] <=> y[1] }    
    v.each { |i| @values << i[0]  }
  end
  
  def calculate
    sum = 0
    @names.each do |n| 
      p1 = @names.index(n) + 1
      p2 = string_numerize n
      sum += p1*p2
    end
    sum
  end
  
  private
  
    def string_numerize str
      sum = 0
      str.each_char { |cstr| sum += @@ALPHABET.index(cstr) + 1 }
      sum
    end
  
end

puts Time.now
puts "The total of all the name scores in the file is #{Problem22.new().calculate}"
puts Time.now