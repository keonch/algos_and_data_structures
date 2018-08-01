require '../../linked_list/singly_linked_list.rb'

def partition(head, partition)
  node = head.next
  while node
    if node.data < partition
      next_node = node.next
      node.next = partition_node
      head = node
    end
    node = next_node
  end

  head
end

LL = SinglyLinkedList.new()

(1..10).to_a.each do |num|
  LL.add(num)
end
