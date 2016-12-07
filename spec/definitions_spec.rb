require('rspec')
require('definitions')

describe(Definition) do
  describe('#initialize') do
    it('tests for definition passed through argument') do
      test_definition = Definition.new({:definition => "to smile", :pos => "verb"})
      expect(test_definition.definition).to(eq("to smile"))
    end
  end
  describe('#pos') do
    it('tests for parts of speech passed through argument') do
      test_definition = Definition.new({:definition => "to smile", :pos => "verb"})
      expect(test_definition.pos).to(eq("verb"))
    end
  end
end
