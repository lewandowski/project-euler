#
# Autor: Fernando Lewandowski Albuquerque 
# Email: fernando.lewandowski@gmail.com 
# Repository: https://github.com/lewandowski/project-euler
# 

require_relative 'math_module'

module NumberFullModule

  class Number

    attr_reader :unity, :dozen, :hundred 
    
    def initialize unity, dozen, hundred
      @unity = unity
      @dozen = dozen
      @hundred = hundred
    end

    def zero?
      @unity + @dozen + @hundred == 0
    end

    def hundred_singular?
      @unity + @dozen + (@hundred*100) == 100
    end

    def number
      "#{@hundred}#{@dozen}#{@unity}".to_i
    end
    
  end
  
  class NumberFull
    include MathModule::MultipleModule

    @@exceptions_join = [220,318,410,411,412,413,414,415,416,417,418,419,420,450,511,512,514,517,518,520,570,610,611,612,613,614,615,616,617,618,619,620,630,650,710,711,713,715,716,717,718,719,740,790,811,812,813,814,815,816,817,818,819,840,850,860,911,912,913,914,915,916,917,918,919,930,920,940,950,970,980,990]
    
    ## pt_br ##
    @@join_pt_br = "e"
    
    @@hash_pt_br = {}
    @@hash_pt_br[0] = ""
    @@hash_pt_br[1] = "um"
    @@hash_pt_br[2] = "dois"
    @@hash_pt_br[3] = "três"
    @@hash_pt_br[4] = "quatro"
    @@hash_pt_br[5] = "cinco"
    @@hash_pt_br[6] = "seis"
    @@hash_pt_br[7] = "sete"
    @@hash_pt_br[8] = "oito"
    @@hash_pt_br[9] = "nove"
    @@hash_pt_br[10] = "dez"
    @@hash_pt_br[11] = "onze"
    @@hash_pt_br[12] = "doze"
    @@hash_pt_br[13] = "treze"
    @@hash_pt_br[14] = "quatorze"
    @@hash_pt_br[15] = "quinze"
    @@hash_pt_br[16] = "dezesseis"
    @@hash_pt_br[17] = "dezessete"
    @@hash_pt_br[18] = "dezoito"
    @@hash_pt_br[19] = "dezenove"
    @@hash_pt_br[20] = "vinte"
    @@hash_pt_br[30] = "trinta"
    @@hash_pt_br[40] = "quarenta"
    @@hash_pt_br[50] = "cinquenta"
    @@hash_pt_br[60] = "sessenta"
    @@hash_pt_br[70] = "setenta"
    @@hash_pt_br[80] = "oitenta"
    @@hash_pt_br[90] = "noventa"
    @@hash_pt_br[100] = {:singular => "cem", :plural => "cento"}
    @@hash_pt_br[200] = "duzentos"
    @@hash_pt_br[300] = "trezentos"
    @@hash_pt_br[400] = "quatrocentos"
    @@hash_pt_br[500] = "quinhentos"
    @@hash_pt_br[600] = "seiscentos"
    @@hash_pt_br[700] = "setecentos"
    @@hash_pt_br[800] = "oitocentos"
    @@hash_pt_br[900] = "novecentos"
    
    @@hash_separator_pt_br = {}
    @@hash_separator_pt_br[0] = ""
    @@hash_separator_pt_br[1] = "mil"
    @@hash_separator_pt_br[2] = {:singular => "milhão", :plural => "milhões"}
    @@hash_separator_pt_br[3] = {:singular => "bilhão", :plural => "bilhões"}
    @@hash_separator_pt_br[4] = {:singular => "trilhão", :plural => "trilhões"}
    @@hash_separator_pt_br[5] = {:singular => "quadrilhão", :plural => "quadrilhões"}
    @@hash_separator_pt_br[6] = {:singular => "quintilhão", :plural => "quintilhões"}
    @@hash_separator_pt_br[7] = {:singular => "sestilhão", :plural => "sestilhões"}
    @@hash_separator_pt_br[8] = {:singular => "septilhão", :plural => "septilhões"}
    @@hash_separator_pt_br[9] = {:singular => "octilhão", :plural => "octilhões"}
    
    ## en ##
    @@join_en = "and"
    
    @@hash_en = {}
    @@hash_en[0] = ""
    @@hash_en[1] = "one"
    @@hash_en[2] = "two"
    @@hash_en[3] = "three"
    @@hash_en[4] = "four"
    @@hash_en[5] = "five"
    @@hash_en[6] = "six"
    @@hash_en[7] = "seven"
    @@hash_en[8] = "eight"
    @@hash_en[9] = "nine"
    @@hash_en[10] = "ten"
    @@hash_en[11] = "eleven"
    @@hash_en[12] = "twelve"
    @@hash_en[13] = "thirteen"
    @@hash_en[14] = "fourteen"
    @@hash_en[15] = "fifteen"
    @@hash_en[16] = "sixteen"
    @@hash_en[17] = "seventeen"
    @@hash_en[18] = "eighteen"
    @@hash_en[19] = "nineteen"
    @@hash_en[20] = "twenty"
    @@hash_en[30] = "thirty"
    @@hash_en[40] = "forty"
    @@hash_en[50] = "fifty"
    @@hash_en[60] = "sixty"
    @@hash_en[70] = "seventy"
    @@hash_en[80] = "eighty"
    @@hash_en[90] = "ninety"
    @@hash_en[100] = {:singular => "one hundred", :plural => "one hundred"}
    @@hash_en[200] = "two hundred"
    @@hash_en[300] = "three hundred"
    @@hash_en[400] = "four hundred"
    @@hash_en[500] = "five hundred"
    @@hash_en[600] = "six hundred"
    @@hash_en[700] = "seven hundred"
    @@hash_en[800] = "eight hundred"
    @@hash_en[900] = "nine hundred"
    
    @@hash_separator_en = {}
    @@hash_separator_en[0] = ""
    @@hash_separator_en[1] = "thousand"
    @@hash_separator_en[2] = {:singular => "million", :plural => "millions"}
    @@hash_separator_en[3] = {:singular => "billion", :plural => "billions"}
    @@hash_separator_en[4] = {:singular => "trillion", :plural => "trillion"}
    @@hash_separator_en[5] = {:singular => "quatrilhão", :plural => "quatrilhões"}
    @@hash_separator_en[6] = {:singular => "quintilhão", :plural => "quintilhões"}
    @@hash_separator_en[7] = {:singular => "sestilhão", :plural => "sestilhões"}
    @@hash_separator_en[8] = {:singular => "septilhão", :plural => "septilhões"}
    @@hash_separator_en[9] = {:singular => "octilhão", :plural => "octilhões"}    
    
    def initialize number, locale="pt_br"
      @locale = locale
      next_multiple = next_multiple_of(number.to_s.size, 3)
      @number = number.to_s.rjust(next_multiple, "0")
      @numbers = []
    end
    
    def calculate
      array = []
      lim = (@number.size/3)-1
      0.upto(lim) do |i|
        array << process(i)
      end
      format_whole_number_output(array.reverse)
    end

    private

      def current_number
        @numbers.last
      end
    
      def process i
        split(i)
        format_partial_number_output(stringlize, find_separator(i))
      end
      
      def stringlize
        
        hundred = dozen = unity = ""
        number = current_number
        
        n = "#{number.dozen}#{number.unity}".to_i
        if n <= 20
          unity = ""
          eval("dozen = @@hash_#{@locale}[#{n}]")
        else
          eval("unity = @@hash_#{@locale}[#{number.unity}]")
          eval("dozen = @@hash_#{@locale}[#{number.dozen*10}]")
        end

        h = number.hundred*100
        if h == 100 
          if number.hundred_singular?
            eval("hundred = @@hash_#{@locale}[#{h}][:singular]")
          else
            eval("hundred = @@hash_#{@locale}[#{h}][:plural]")
          end
        else
          eval("hundred = @@hash_#{@locale}[#{h}]")
        end
        
        [ 
          {:id => "h", :str => hundred, :num => number.hundred, :number => current_number.number}, 
          {:id => "d", :str => dozen, :num => number.dozen, :number => current_number.number}, 
          {:id => "u", :str => unity, :num => number.unity, :number => current_number.number}, 
        ]
        
      end
      
      def split i
        
        c = i * 3
        
        u = @number.to_s.chars.to_a[@number.to_s.size-1-c].to_i
        d = @number.to_s.chars.to_a[@number.to_s.size-2-c].to_i
        h = @number.to_s.chars.to_a[@number.to_s.size-3-c].to_i        
        
        @numbers << Number.new(u,d,h)
        
      end
      
      def find_separator i
        
        s = ""
        
        if current_number.zero?
          s = ""
        else
          if i <= 1
            eval("s = @@hash_separator_#{@locale}[#{i}]")
          else
            if current_number.unity == 1
              eval("s = @@hash_separator_#{@locale}[#{i}][:singular]")
            else
              eval("s = @@hash_separator_#{@locale}[#{i}][:plural]")
            end
          end
        end        
        
        s
        
      end
      
      # TODO levar para classe Number
      def format_partial_number_output array, unity, joiner=eval("@@join_#{@locale}")
        
        return if array.empty?
        
        str = ""
        num = ""
        array.each do |a|
          join = ""
          if joiner == ""
            join << " " unless str.empty?
          else
            if @locale == 'en'
              if a[:id].upcase == "u".upcase
                join << "-" unless str.empty?
              else
                join << " #{joiner} " unless str.empty?
              end              
            else
              join << " #{joiner} " unless str.empty?
            end
          end
          str << "#{join}#{a[:str]}" if a[:str] && a[:str] != ""
          num << a[:num].to_s
        end
        
        str << " #{unity}" unless unity.empty?
        {:str => str, :num => num}
      end

      def format_whole_number_output array
        
        return if array.empty?
        
        str = ""
        array.each do |a|
          join = ""
          if a[:num].to_i <= 100 || a[:num].to_i % 100 == 0
            join << " #{eval("@@join_#{@locale}")} " unless str.empty?
          else
            join << " " unless str.empty?
          end
          str << "#{join}#{a[:str]}" if a[:str] && a[:str] != ""
        end
        
        str
        
      end
      
  end
    
end

#puts "Number full of #{ARGV[0].to_i} is #{NumberFullModule::NumberFull.new(ARGV[0].to_i,"pt_br").calculate.upcase}"
#puts "Number full of #{ARGV[0].to_i} is #{NumberFullModule::NumberFull.new(ARGV[0].to_i,"en").calculate.upcase}"