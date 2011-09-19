#
# Autor: Fernando Lewandowski Albuquerque 
# Email: fernando.lewandowski@gmail.com 
# Repository: https://github.com/lewandowski/project-euler
# 
module MathModule
  
  module MultipleModule
    
    def is_multiple_of value, multiples
      
      is_multiple = false
      
      multiples.each do |multiple|
        if is_multiple == false && multiple < value
          is_multiple = value % multiple == 0 
        end
      end
      
      is_multiple
      
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
  
  module PalindromicModule
    
    def is_palindromic number
      number.to_s == number.to_s.reverse
    end
    
  end
  
end