#
# Autor: Fernando Lewandowski Albuquerque 
# Email: fernando.lewandowski@gmail.com 
# Repository: https://github.com/lewandowski/project-euler
#
#Problem 4
#16 November 2001
#
#A palindromic number reads the same both ways. The largest palindrome made 
#from the product of two 2-digit numbers is 9009 = 91 X 99.
#
#Find the largest palindrome made from the product of two 3-digit numbers.
#
#Exemplos: 14541, 7117, 3333, etc.
 
#Há uma questão matemática interessante, envolvendo esses números, chamada conjectura palíndroma.
# 
#Essa conjectura consiste em escolhermos qualquer número, escrevê-lo em ordem inversa e somarmos os dois números obtidos. Com a soma obtida, repete-se o procedimento até a obtenção de um número palíndromo.
# 
#Por exemplo:
# 
#Seja 68 o número escolhido.
# 
#Primeiro passo:
# 
#68 + 86 = 154
# 
#Segundo passo:
# 
#154 + 451 = 605
# 
#Terceiro passo:
# 
#605 + 506 = 1111 (deu um palíndromo!).
#
#Answer: 906609
#

require_relative 'math_module'

class Problem4
  include MathModule::PalindromicModule
  
  MAXIMUM_PRODUCT = 998001
  
  def initialize value_a, value_b
    @value_a = value_a
    @value_b = value_b
  end
  
  def calculate

#    @value_a.downto(0) do |a|
#      @value_b.downto(0) do |b|
#        n = a * b
#        return n if is_palindromic n
#      end      
#    end
    
    i = 0
    MAXIMUM_PRODUCT.downto(1) do |a|
      @value_b.downto(1) do |b|
        if a % b == 0
          i += 1
          n = a / b 
          if (n <= 999)
            puts "[#{i}] Verificando numero #{n} ..."
            return a if is_palindromic a
          end
        end
      end
    end      
    
  end
  
end

if ARGV.nil? || ARGV.empty?
  puts "First enter a number."
else
  puts Time.now
  puts "The largest palindromic number of numbers #{ARGV.first.to_i} e #{ARGV.last.to_i} is #{Problem4.new(ARGV.first.to_i, ARGV.last.to_i).calculate}"
  puts Time.now
end