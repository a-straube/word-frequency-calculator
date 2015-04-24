class String
  define_method(:word_frequency) do |target_word|
    user_sentence = self
    matching_words = []
    sentence_words = user_sentence.split()
    sentence_words.each do |word|
      if word.==(target_word)
        matching_words.push(word)
      end
    end
    matching_words.count
  end
end
