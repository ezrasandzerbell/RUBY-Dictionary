class Definition
  define_method(:initialize) do |definition|
    @definition = definition
  end
  define_method(:word) do
    @definition
  end
end
