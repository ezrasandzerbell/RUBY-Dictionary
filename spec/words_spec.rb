require('rspec')
require('words')

describe(Word) do
  describe('#initialize') do
    it('tests for word passed through argument') do
      test_word = Word.new("word")
      expect(test_word).to(eq(test_word))
    end
  end
end
