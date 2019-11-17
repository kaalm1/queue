require_relative "queue_stack"
require "test/unit"

class TestSimpleNumber < Test::Unit::TestCase

  def test_basic
    queue = QueueStack.new()
    queue.push(35)
    queue.push(20)
    queue.push(15)
    queue.push(20)
    queue.push(40)
    queue.push(10)
    assert_equal([35,20,15,20,40,10],  queue.list)

    queue.pop
    queue.pop
    assert_equal([15,20,40,10],  queue.list)

    assert_equal(40,  queue.max)
    # assert_equal(6, QueueStack.new(2).multiply(3) )

    queue.push(10)
    queue.push(10)
    queue.push(15)
    queue.push(20)
    queue.push(20)
    queue.push(10)

    assert_equal([15,20,40,10,10,10,15,20,20,10],  queue.list)
    assert_equal(40,  queue.max)

    queue.pop
    queue.pop
    queue.pop

    assert_equal([10,10,10,15,20,20,10],  queue.list)
    assert_equal(20,  queue.max)

  end

end
