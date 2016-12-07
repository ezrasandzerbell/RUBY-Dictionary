class Definition
  attr_reader(:definition, :pos)
  define_method(:initialize) do |attributes|
    @definition = attributes.fetch(:definition)
    @pos = attributes.fetch(:pos)
  end
end
