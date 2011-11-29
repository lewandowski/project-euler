#
# Autor: Fernando Lewandowski Albuquerque 
# Email: fernando.lewandowski@gmail.com 
# Repository: https://github.com/lewandowski/project-euler
#
#Problem 15
#19 April 2002
#
#Starting in the top left corner of a 2x2 grid, there are 6 routes (without 
#backtracking) to the bottom right corner.
#
# imagem in https://projecteuler.net/project/images/p_015.gif
#
#How many routes are there through a 20x20 grid?
#
# Answer: 137846528820
#

require 'mathn'

class Problem15
  
  def initialize limit
    @limit = limit+1
    init
  end
  
  def calculate
    @matrix.element(@limit-1, @limit-1)
  end
  
  private
  
    def init
      
      # Pascal triangle
      hash = {}
      @matrix = Matrix.build(@limit) do |row, col| 
        n = 0
        if row == 0 || col == 0
          n = 1 
        else
          n = hash["#{row.to_s}#{(col-1).to_s}"] + hash["#{(row-1).to_s}#{col.to_s}"]
        end
        hash["#{row.to_s}#{col.to_s}"] = n
        n
      end
#      puts @matrix.inspect
    end
  
end

if ARGV.nil? || ARGV.empty?
  puts "First enter a number."
else
  puts Time.now
  puts "In a grid #{ARGV[0].to_i}x#{ARGV[0].to_i}, there are #{Problem15.new(ARGV[0].to_i).calculate} routes."  
  puts Time.now
end