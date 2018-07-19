def urlify(str, length)
  result = ''
  i = 0
  while result.length < length
    if str[i] == ' '
      result += '%20'
    else
      result += str[i]
    end
    i += 1
  end
  result
end
