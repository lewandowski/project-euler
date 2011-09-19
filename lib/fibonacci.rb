#
# Autor: Fernando Lewandowski Albuquerque 
# Email: fernando.lewandowski@gmail.com 
# Repository: https://github.com/lewandowski/project-euler
#
class Fibonacci

  def initialize maximum_value=0
    @array = []
    @maximum_value = maximum_value
  end
  
  
  def calculate_fibonacci x = 1, y = 2
    
    # 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

    if (x == 1 and y == 2)
      @array << x
      @array << y
    end
    
    z = x + y
    
    if z < @maximum_value
      @array << z
      calculate_fibonacci y, z
    end

    @array
    
  end
  
end

#puts "Fibonacci of #{ARGV.first.to_i} is #{Fibonacci.new(ARGV.first.to_i).calculate_fibonacci}"