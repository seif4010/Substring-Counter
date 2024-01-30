def substrings(word, dictionary)
  word = word.downcase
  result = Hash.new(0)

  dictionary.each do |substring|
    substring = substring.downcase
    occurrences = word.scan(substring).length
    result[substring] += occurrences if occurrences > 0
  end

  result
end

# Example usage:
word = "hello"
dictionary = ["he", "lo", "hello", "world"]
result = substrings(word, dictionary)
puts result
