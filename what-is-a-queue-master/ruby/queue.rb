class Queue
  attr_reader :limit

  def initialize
    @queue = []
    @limit = 10 # Set the default limit to 10
    # this is an arbitrary value to make testing easier
    # 1,024 would be way too high to test!
  end

  # add item to rear of queue if not full
  # if full, throw error
  def enqueue(item)
    if @queue.length >= @limit
      raise "Queue is full"
    end
    @queue << item
  end

  # remove item from front of queue and return it
  def dequeue
    @queue.shift
  end

  # return item at front of queue without removing it
  def peek
    @queue.first
  end

  # return true if queue is empty, otherwise false
  def isEmpty?
    @queue.empty?
  end

  # return true if queue is full, otherwise false
  def isFull?
    @queue.length >= @limit
  end

  # return number of items in queue
  def size
    @queue.length
  end

  # return -1 if item not in queue, otherwise integer representing
  # how far it is from the front
  def search(target)
    index = @queue.index(target)
    index ? index : -1
  end

  # print contents of queue: do not return the queue itself!
  def print
    puts @queue
  end
end

if __FILE__ == $PROGRAM_NAME
  # Don't forget to add your tests!
end
