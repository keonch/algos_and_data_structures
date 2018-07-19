def remove_dups(node)
  hsh = Hash.new(){Array.new()}
  while node != nil
    data = node.data
    hsh[data].push(node)
    node = node.next
  end
  hsh.each do |data, nodes|
    if nodes.length > 1
      nodes.each do |node|
        node.previous.next = node.next
      end
    end
  end
end
