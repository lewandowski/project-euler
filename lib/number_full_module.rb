#
# Autor: Fernando Lewandowski Albuquerque 
# Email: fernando.lewandowski@gmail.com 
# Repository: https://github.com/lewandowski/project-euler
# 

require_relative 'math_module'

module NumberFullModule

  class NumberFull
    include MathModule::MultipleModule

    @@separator = "e"
    
    @@hash = {}
    @@hash[0] = ""
    @@hash[1] = "um"
    @@hash[2] = "dois"
    @@hash[3] = "três"
    @@hash[4] = "quatro"
    @@hash[5] = "cinco"
    @@hash[6] = "seis"
    @@hash[7] = "sete"
    @@hash[8] = "oito"
    @@hash[9] = "nove"
    @@hash[10] = "dez"
    @@hash[11] = "onze"
    @@hash[12] = "doze"
    @@hash[13] = "treze"
    @@hash[14] = "quatorze"
    @@hash[15] = "quinze"
    @@hash[16] = "dezesseis"
    @@hash[17] = "dezessete"
    @@hash[18] = "dezoito"
    @@hash[19] = "dezenove"
    @@hash[20] = "vinte"
    @@hash[30] = "trinta"
    @@hash[40] = "quarenta"
    @@hash[50] = "cinquenta"
    @@hash[60] = "sescenta"
    @@hash[70] = "setenta"
    @@hash[80] = "oitenta"
    @@hash[90] = "noventa"
    @@hash[100] = "cem"
    @@hash[200] = "duzentos"
    @@hash[300] = "trezentos"
    @@hash[400] = "quatrocentos"
    @@hash[500] = "quinhentos"
    @@hash[600] = "seiscentos"
    @@hash[700] = "setecentos"
    @@hash[800] = "oitocentos"
    @@hash[900] = "novecentos"
    
    @@hash_separator = {}
    @@hash_separator[0] = ""
    @@hash_separator[1] = "mil"
    @@hash_separator[2] = "milhão"
    @@hash_separator[3] = "bilhão"
    @@hash_separator[4] = "trilhão"
    
    def initialize number
      next_multiple = next_multiple_of(number.to_s.size, 3)
      @number = number.to_s.rjust(next_multiple, "0")
    end
    
    def calculate
      lim = (@number.size/3)-1
      0.upto(lim) do |i|
        puts process(i).inspect
      end
    end

    private

      def process i
        c = i * 3
        
        u = @@hash[@number.to_s.chars.to_a[@number.to_s.size-1-c].to_i]
        d = @@hash[@number.to_s.chars.to_a[@number.to_s.size-2-c].to_i*10]          
        h = @@hash[@number.to_s.chars.to_a[@number.to_s.size-3-c].to_i*100]        
        
        n = "#{u}#{d}".to_i
        if n <= 20
          unit = ""
          dozen = @@hash[n]
          puts "n=#{n}"
        else
          unit = u
          dozen = d
        end      

        hundred = @@hash[@number.to_s.chars.to_a[@number.to_s.size-3-c].to_i*100]
        separator = @@hash_separator[i]
        format_output [hundred, dozen, unit, separator]
      end
      
      def format_output array
        new_array = []
        array.each do |a|
          sep = ""
          sep << @@separator unless new_array.empty?
          new_array << "#{sep} #{a}" if a && a != ""
        end
        new_array
      end
      
  end
    
end

puts "Number full of #{ARGV[0].to_i} is #{NumberFullModule::NumberFull.new(ARGV[0].to_i).calculate}"