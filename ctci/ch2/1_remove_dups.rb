require 'Set'

def remove_dups(head)
  set = Set.new
  node = head
  prev_node = head
  while node != nil
    if set.include?(node.data)
      prev_node.next = node.next
    else
      set.add(node.data)
      prev_node = node
    end
    node = node.next
  end

  head
end

def remove_dups(head)
  node = head
  runner_node = node.next
  prev_node = head
  while node != nil
    while runner_node != nil
      if runner_node.data == node.data
        prev_node.next = runner_node.next
        runner_node = runner_node.next
      else
        prev_node = runner_node
        runner_node = runner_node.next
      end
    end
    node = node.next
  end

  head
end
