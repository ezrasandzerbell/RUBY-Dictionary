class Word
  @@all_words = []
  define_method(:initialize) do |word|
    @word = word
  end
  define_method(:save) do
    @@all_words.push(self)
  end
  define_method(:all) do
    @@all_words
  end
end
