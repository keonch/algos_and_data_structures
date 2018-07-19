require 'Set'

def is_perm?(str1, str2)
  return false if str1.length != str2.length

  str1_chars = Hash.new(0)
  str1.each_char do |ch|
    str1_chars[ch] += 1
  end

  str2.each_char do |ch|
    if str1_chars[ch] == 0
      return false
    else
      str1_chars[ch] -= 1
    end
  end

  true
end
