require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*elements)
    @list = elements
  end

  def each
    return enum_for(__method__) unless block_given?

    @list.each { |element| yield element }
  end
end
