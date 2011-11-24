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
# Answer: 
#

#require_relative 'math_module'

class Problem14
#  include MathModule::CollatzModule
  
  def initialize limit
    @limit = limit
  end
  
  def calculate
    
  end
  
end

if ARGV.nil? || ARGV.empty?
  puts "First enter a number."
else
  puts Time.now
  puts "In a grid #{ARGV[0].to_i}x#{ARGV[0].to_i}, there are #{Problem15.new(ARGV[0].to_i).calculate} routes."  
  puts Time.now
end