class Node
  def initialize(data)
    @data = data
    @next = nil
  end

  def data
    @data
  end

  def data=(data)
    @data = data
  end

  def next
    @next
  end

  def next=(node)
    @next = node
  end
end

class SinglyLinkedList
  def initialize(node = nil)
    @head = node
    @tail = node
    @length = node ? 1 : 0
  end

  def add(data)
    node = Node.new(data)
    if !@head
      @head = node
      @tail = node
    else
      @tail.next = node
      @tail = node
    end
    @length += 1
  end

  def head
    @head
  end

  def tail
    @tail
  end

  def length
    @length
  end
end
