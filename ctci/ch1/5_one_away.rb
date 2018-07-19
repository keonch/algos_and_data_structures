def is_one_away?(s1, s2)
  case (s1.length - s2.length)
  when 0
    has_one_replace(s1, s2)
  when 1
    has_one_ins_del(s1, s2)
  when -1
    has_one_ins_del(s2, s1)
  else
    false
  end
end

def has_one_replace(s1, s2)
  has_one_ch = false
  i = 0
  while i < s1.length
    if s1[i] != s2[i] && !has_one_ch
      has_one_ch = true
    elsif s1[i] != s2[i] && has_one_ch
      return false
    end
    i += 1
  end
  true
end

def has_one_ins_del(s1, s2)
  has_one_ch = false
  i = 0
  while i < s1.length
    if s1[i] != s2[i]
      return false if has_one_ch

      j = i
      while j < s1.length - 1
        if s1[j + 1] != s2[j]
          return false
        end
        j += 1
      end

      return true
    end
    i += 1
  end
  true
end
