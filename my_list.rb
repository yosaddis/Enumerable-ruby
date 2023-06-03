require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*elements)
    @list = elements
  end

  def each(&block)
    return enum_for(__method__) unless block_given?

    @list.each(&block)
  end
end
