class QueueStack
  attr_accessor :s1, :s2

  def initialize
    @s1, @s2, @max, @max2 = [], [], [], []
  end

  def push(val)
    @s1 << val
    @max2 << val if @max2.empty? || val >= @max2.last
  end

  def peek
    if @s2.empty?
      until @s1.empty?
        val = @s1.pop
        @s2 << val
        @max << val if @max.empty? || val >= @max.last
      end
      @max2 = []
    end
    @s2.last
  end

  def pop
    peek
    val = @s2.pop
    @max.pop if @max.last == val
    val
  end

  def max
    peek
    !@max2.empty? && @max2.last > @max.last ? @max2.last : @max.last
  end

  def empty
    @s1.empty? && @s2.empty?
  end

  def list
    @s2.reverse + @s1
  end
end

# Tests

# queue = QueueStack.new
# queue.push(35)
# queue.push(20)
# queue.push(10)
# queue.push(10)
# queue.push(20)
# queue.push(15)
# puts queue.peek
# puts queue.max
# queue.pop
# puts queue.peek
# queue.pop
# puts queue.max
# queue.push(40)
# puts queue.max
# queue.pop
# queue.pop
# queue.pop
# puts queue.max
