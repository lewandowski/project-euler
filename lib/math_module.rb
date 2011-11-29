#
# Autor: Fernando Lewandowski Albuquerque 
# Email: fernando.lewandowski@gmail.com 
# Repository: https://github.com/lewandowski/project-euler
# 
module MathModule
  
  module MultipleModule
    
    def is_multiple_of value, multiples, eql=true
      
      is_multiple = false
      
      multiples.each do |multiple|
        if is_multiple == false && ((multiple <= value && eql) || (multiple < value && !eql))
          is_multiple = value % multiple == 0 
        end
      end
      
      is_multiple
      
    end
    
    def next_multiple_of(number, multiple)
      next_multiple = number
      0.upto(multiple) do |i|
        n = number+i
        if is_multiple_of(n, [multiple])
          next_multiple = n
          break
        end
      end
      next_multiple
    end
    
  end
  
  module FactoringModule
    
    def factoring value, current_factor, factors, prime_factors

      v = value
      cf = current_factor
      
      if value > cf
        
        if value % current_factor == 0
          prime_factors << cf
          v = value / current_factor
        else
          cf = factors[factors.index(current_factor) + 1]
        end

        cf = factoring v, cf, factors, prime_factors
        
      else
        prime_factors << cf
      end
      
      prime_factors
      
    end     
    
  end
  
  module DivisorModule
    
    def divisors value
      
      return if value < 1
      
      array = []
      array << value
      v = (value / 2).truncate
      
      v.downto(1) do |x|
        if value % x == 0
          array << x
        end
      end
    
      array
      
    end
    
  end
  
  module PalindromicModule
    
    def is_palindromic number
      number.to_s == number.to_s.reverse
    end
    
  end
  
  module Progression
    
    module Arithimetic
      
      def size_pa n1, nn, r=1
        ((nn-n1)+r)/r
      end
      
      def sum_pa n1, nn, r=1
        (size_pa(n1, nn, r)*(n1+nn))/2
      end
      
    end
    
    module Geometric
      
    end    
    
  end
  
  module CollatzModule
    
    def collatz_fn_gen n, a
      
      v = 0
      if n.even?
        v = n/2
      else
        v = (3*n)+1
      end
      
      a << n if a.empty?
      a << v
      
      collatz_fn_gen(v, a) if v > 1
      
      a
      
    end
    
  end
  
end