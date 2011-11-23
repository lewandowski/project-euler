# From http://macdevelopertips.com/ruby/using-a-stack-with-ruby.html

class Stack

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
    @the_stack.pop
  end

  def count
    @the_stack.length
  end
  
  def clear
    @the_stack.clear
  end

  def look
    @the_stack.last
  end
  
  def to_s
    @the_stack.inspect
  end
  
end