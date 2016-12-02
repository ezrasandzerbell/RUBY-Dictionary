class Definition
  define_method(:initialize) do |definition, pos|
    @definition = definition
    @pos = pos
  end
  define_method(:word) do
    @definition
  end
  define_method(:pos) do
    @pos
  end
end
