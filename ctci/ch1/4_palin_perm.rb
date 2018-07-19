def is_palin_perm?(str)
  characters = Hash.new(0)
  str.each_char do |ch|
    if ch.downcase.ord.between?(97, 122)
      characters[ch.downcase] += 1
    end
  end

  single_letter = false
  characters.each_value do |val|
    if val.odd? && single_letter
      return false
    elsif val.odd?
      single_letter = true
    end
  end

  true
end
