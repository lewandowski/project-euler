#
# Autor: Fernando Lewandowski Albuquerque 
# Email: fernando.lewandowski@gmail.com 
# Repository: https://github.com/lewandowski/project-euler
# 
# O crivo de Erastotenes
# 
# Seguem-se os seguintes passos:
#1. Escrevem-se todos os números até 101 
#2. Cortam-se, com um traço, todos os múltiplos de 2; 
#3. A cada passo seguinte cortam-se todos os números múltiplos do seguinte menor 
#número restante de p, que seja maior do que p. 
#4. É suficiente fazê-lo até p2 < 101.
#
#Embora todos os múltiplos de 2,3,5,7 < 1011/2 sejam cortados, resta-nos número 
#53, que é primo pois ficou sem ser cortado na tabela.
#
#Então os números primos até 101 são, 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 
#37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101.
#  
require_relative 'math_module'

class PrimeNumberCrivoErastotenes
  include MathModule::MultipleModule
  
  def initialize maximum_value=0
    @matrix = []
    @maximum_value = maximum_value
    init
  end

  def calculate
    @array = []
    scan do |line, column| 
      number = (line.to_s + column.to_s).to_i
      @matrix[line][column] = !is_multiple_of(number, @array_multiples, false) && number >= 2
      @array << number if @matrix[line][column]
    end
    
    @array
    
  end
  
  def calculate_ordinal
    
    n = 2
    array = []
    
    loop do
      puts "... processando #{n} ..."
      array = PrimeNumberCrivoErastotenes.new(n).calculate
      if array.size >= @maximum_value-1 && array[@maximum_value-1]
        break 
      else
#        n = (n**2)
        n += 1000
      end
    end

    array[@maximum_value-1]
    
  end
  
  private
  
    def init
      init_matrix
      init_array_multiples
    end
    
    def init_matrix
      
      last_line = @maximum_value / 10
      0.upto(last_line) do |line|
        
        @matrix << []
        if line == last_line
          last_column = @maximum_value % 10
        else
          last_column = 9
        end
        
        0.upto(last_column) do |column|
          @matrix[line][column] = false
        end
        
      end
      
    end

    def init_array_multiples
      
      maximum_multiple = Math.sqrt(@maximum_value).truncate
      @array_multiples = []

      2.upto(maximum_multiple) do |i|
        @array_multiples << i
      end if maximum_multiple >= 2    
      
    end
    
    def scan #&block
      
      x = -1
      y = -1
      @matrix.each do |line|
        x += 1
        y = -1
        line.each do |column|
          y += 1
#          block.call
          yield x, y
        end
      end
      
    end
    
end

#puts Time.now
#puts "The prime numbers of #{ARGV.first.to_i} by crivo erastotenes are #{PrimeNumberCrivoErastotenes.new(ARGV.first.to_i).calculate}"
##puts "The #{ARGV.first.to_i}º prime number is #{PrimeNumberCrivoErastotenes.new(ARGV.first.to_i).calculate_ordinal}"
#puts Time.now