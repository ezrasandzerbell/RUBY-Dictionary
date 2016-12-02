require('rspec')
require('words')

describe(Word) do
  describe('#initialize') do
    it('tests for word passed through argument') do
      test_word = Word.new("word")
      expect(test_word.get_word).to(eq("word"))
    end
  end
  describe('#save') do
    it('tests for saving multiple words to class variable') do
      Word.clear()
      test_word1 = Word.new("word")
      test_word1.save
      test_word2 = Word.new("another")
      test_word2.save
      expect(Word.all).to(eq([test_word1, test_word2]))
    end
  end
end
