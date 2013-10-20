#
# Autor: Fernando Lewandowski Albuquerque
# Email: fernando.lewandowski@gmail.com
# Repository: https://github.com/lewandowski/project-euler
#
##Problem 1
#05 October 2001
#
#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
#Find the sum of all the multiples of 3 or 5 below 1000.
#
#Answer: 233168
#
#
class Problem24

  def initialize maximum_value
    @maximum_value = maximum_value
  end

  def sum

    sum = 0

    (@maximum_value-1).downto(0) do |current_value|
      if (current_value % 3 == 0) || (current_value % 5 == 0)
        sum += current_value
      end
    end

    sum

  end

end

if ARGV.nil? || ARGV.empty?
  puts "First enter a number."
else
  puts "Sum is #{Problem24.new(ARGV.first.to_i).sum}"
end
