#
# Autor: Fernando Lewandowski Albuquerque fernando.lewandowski@gmail.com https://github.com/lewandowski/project-euler
#
class Fibonacci

  def initialize maximum_value
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

puts "Fibonacci is #{Fibonacci.new(4000000).calculate_fibonacci}"