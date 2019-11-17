class QueueStack
  attr_accessor :s1, :s2

  def initialize
    @s1, @s2 = [], []
  end

  def push(val)
    @s1 << val
  end

  def peek
    @s2 << @s1.pop until @s1.empty? if @s2.empty?
    @s2.last
  end

  def pop
    peek
    @s2.pop
  end

  def max

  end
end

# Tests

queue = QueueStack.new
queue.push(10)
queue.push(20)
queue.push(15)
puts queue.peek
queue.pop
puts queue.peek
