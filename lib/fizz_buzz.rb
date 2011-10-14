#
# Autor: Fernando Lewandowski Albuquerque 
# Email: fernando.lewandowski@gmail.com 
# Repository: https://github.com/lewandowski/project-euler
#
#Play
#
#Players generally sit in a circle. The player designated to go first says 
#the number "1", and each player thenceforth counts one number in turn. However,
#any number divisible by three is replaced by the word bizz and any divisible by
#five by the word buzz. Numbers divisible by both become bizz buzz. A player who
#hesitates or makes a mistake is either eliminated or must pay a forfeit, such 
#as taking a drink.
#[edit]Example
#
#A typical round of bizz buzz starts like this:
#1, 2, Bizz, 4, Buzz, Bizz, 7, 8, Bizz, Buzz, 11, Bizz, 13, 14, Bizz Buzz, 16, 
#17, Bizz, 19, Buzz, Bizz, 22, 23, Bizz, Buzz, 26, Bizz, 28, 29, Bizz Buzz, 31, 
#32, Bizz, 34, Buzz, Bizz, ...
#
#
# Answer: The fizz buzz of 21 is ["0", "1", "2", "Fizz", "4", "Buzz", "Fizz", 
# "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz", "16", "17", 
# "Fizz", "19", "Buzz", "Fizz"] 
#
require_relative 'math_module'

class FizzBuzz
  include MathModule::MultipleModule
  
  def initialize v=0
    @v = v
  end
  
  def calculate
    array = []
    0.upto(@v) do |v|
      str = ""
      str << "Fizz" if is_multiple_of(v, [3])
      str << "Buzz" if is_multiple_of(v, [5])
      str << v.to_s if str == ""
      array << str.to_s
    end
    array
  end
  
end

if ARGV.nil? || ARGV.empty?
  puts "First enter a number."
else
  puts Time.now
  puts "The fizz buzz of #{ARGV[0].to_i} is #{FizzBuzz.new(ARGV[0].to_i).calculate} "
  puts Time.now
end