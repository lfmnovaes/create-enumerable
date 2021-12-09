require_relative './my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*arr)
    @list = arr
  end
end