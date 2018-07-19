require 'Set'

# def is_unique?(str)
#   characters = Set.new
#   str.each_char do |ch|
#     if characters.include?(ch)
#       return false
#     else
#       characters.add(ch)
#     end
#   end
#   true
# end

# using bit vector
def is_unique?(str)
  checker = 0
  str.each_char do |ch|
    val = ch.ord
    if (checker & (1 << val)) != 0
      return false
    else
      checker |= (1 << val)
    end
  end
  true
end
