#
# Autor: Fernando Lewandowski Albuquerque 
# Email: fernando.lewandowski@gmail.com 
# Repository: https://github.com/lewandowski/project-euler
#
#Problem 18
#31 May 2002
#
#By starting at the top of the triangle below and moving to adjacent numbers on 
#the row below, the maximum total from top to bottom is 23.
#
#   3
#  7 4
# 2 4 6
#8 5 9 3
#
#That is, 3 + 7 + 4 + 9 = 23.
#
#Find the maximum total from top to bottom of the triangle below:
#
#                     75
#                    95 64
#                  17 47 82
#                 18 35 87 10
#                20 04 82 47 65
#              19 01 23 75 03 34
#             88 02 77 73 07 63 67
#            99 65 04 28 06 16 70 92
#          41 41 26 56 83 40 80 70 33
#        41 48 72 33 47 32 37 16 94 29
#       53 71 44 65 25 43 91 52 97 51 14
#     70 11 33 28 77 73 17 78 39 68 17 57
#    91 71 52 38 17 14 91 43 58 50 27 29 48
#  63 66 04 68 89 53 67 30 73 16 69 87 40 31
# 04 62 98 27 23 09 70 98 73 93 38 53 60 04 23
#
#NOTE: As there are only 16384 routes, it is possible to solve this problem by 
#trying every route. However, Problem 67, is the same challenge with a triangle 
#containing one-hundred rows; it cannot be solved by brute force, and requires 
#a clever method! ;o)
#
# Answer: 1074
#
# Thanks a lot http://tafakuri.net/?p=65
#

require 'mathn'

class Problem18
  
  def initialize
    @triangle_string = 
     '75
      95 64
      17 47 82
      18 35 87 10
      20 04 82 47 65
      19 01 23 75 03 34
      88 02 77 73 07 63 67
      99 65 04 28 06 16 70 92
      41 41 26 56 83 40 80 70 33
      41 48 72 33 47 32 37 16 94 29
      53 71 44 65 25 43 91 52 97 51 14
      70 11 33 28 77 73 17 78 39 68 17 57
      91 71 52 38 17 14 91 43 58 50 27 29 48
      63 66 04 68 89 53 67 30 73 16 69 87 40 31
      04 62 98 27 23 09 70 98 73 93 38 53 60 04 23'
    
  end
  
  def calculate
    max_sum_in_triangle
  end
  
  private
  
    def get_triangle_array
      @triangle_string.lines.map { |l| l.split.map { |n| n.to_i } }
    end
  
    def max_sum_in_triangle
      list_of_lists = get_triangle_array
      num_rows = list_of_lists.size
      0.upto(num_rows-1) do |index|
        next if index == 0
        curr_row = list_of_lists[index]
        previous_row = list_of_lists[index - 1]
        0.upto(index+1) do |column|
          if column == 0
            curr_row[column] += previous_row[column] if previous_row.size-1 >= column
          elsif column == index
            curr_row[column] += previous_row[column - 1] if previous_row.size-1 >= column - 1
          else
            v1 = 0
            v1 = previous_row[column - 1] if previous_row.size-1 >= column - 1
            v2 = 0
            v2 = previous_row[column] if previous_row.size-1 >= column
            m = [v1, v2].max
            curr_row[column] += m if m && m > 0
          end
        end
      end
      list_of_lists[num_rows - 1].max
    end
end

puts Time.now
puts "The maximum total from top to bottom of the triangle is #{Problem18.new().calculate}."  
puts Time.now