def translate( string )
  translated_string = []
  string = string.split(" ")
  word_count = 0
  string.each do |word|
    if word[0] == "a" || word[0] == "e" || word[0] == "i" \
      || word[0] == "o" || word[0] == "u"
      word = word + "ay"
      translated_string << word
    else
      until word[word_count] == "a" || word[word_count] == "e" || word[word_count] == "i" || \
          word[word_count] == "o" || word[word_count] == "u" do
        word_count += 1
      end
      if word[word_count - 1] == "q" && word[word_count] == "u"
        word_count += 1
      end
      ending = word[0..word_count - 1]
      word = word.delete(ending)
      word = word + ending + "ay"
      translated_string << word
      word_count = 0
    end
  end
  return translated_string.reject(&:empty?).join(" ")
end