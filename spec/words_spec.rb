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
  describe('.clear') do
    it('tests for clearing class variable all from Word Class') do
      test_word13 = Word.new("word")
      Word.clear()
      expect(Word.all).to(eq([]))
    end
  end
  describe('#save_definition') do
    it('tests for saving and retrieving definition of Word Class instance') do
      Word.clear
      test_word = Word.new("word")
      test_word.save_definition("building block of language")
      expect(test_word.definitions).to(eq(["building block of language"]))
    end
  end
end
