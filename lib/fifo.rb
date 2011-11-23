class Fifo

  def initialize limit
   @the_stack = []
   @limit = limit
  end

  def push(item)
    if @limit != nil && self.count >= @limit
      self.pop
    end
    @the_stack.push item
  end

  def pop
    @the_stack.delete(first)
  end

  def count
    @the_stack.length
  end
  
  def clear
    @the_stack.clear
  end

  def look
    last
  end

  def first
    @the_stack.first
  end  
  
  def last
    @the_stack.last
  end
  
  def to_s
    @the_stack.inspect
  end
  
  def product
    prod = 1
    @the_stack.collect { |i| prod *= i }
    prod
  end
  
end