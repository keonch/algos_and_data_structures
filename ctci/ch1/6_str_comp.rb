def compress_string(str)
  unique_chars = str.split("").uniq.length
  if unique_chars > str.length / 2
    return str
  end

  result = ''
  count = 0

  i = 0
  while i < str.length
    count += 1

    if i + 1 >= str.length || str[i] != str[i + 1]
      result += count.to_s + str[i]
      count = 0
    end
    i += 1
  end

  result
end
