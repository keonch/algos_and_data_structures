def kth_to_last(head, k)
  node = head
  traverse_count = 0
  kth_node = nil
  while node
    traverse_count += 1
    if traverse_count == k
      kth_node = head
    elsif traverse_count > k
      kth_node = kth_node.next
    end
    node = node.next
  end

  kth_node
end
