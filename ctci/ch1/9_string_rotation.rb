def string_rotation(s1, s2)
  return false if s1.length != s2.length

  is_substring?((s1+s1), s2)
end

def is_substring?(s1, s2)
  s1.include?(s2)
end
