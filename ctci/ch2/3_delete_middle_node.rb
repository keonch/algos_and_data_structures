def delete_middle_node(node)
  while node
    node.data = node.next.data
    if !node.next.next
      node.next = nil
    end
    node = node.next
  end

  node
end

def delete_middle_node_const(node)
  node.data = node.next.data
  node.next = node.next.next
end
