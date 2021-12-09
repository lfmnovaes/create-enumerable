require_relative './MyEnumerable'

class MyList
  include MyEnumerable
  def initialize(*arr)
    @list = arr
  end
end

list = MyList.new(1, 2, 3, 4)
# <MyList: @list=[1, 2, 3, 4]>

# Test #all?
p list.all? { |e| e < 5 }
# true
p list.all? { |e| e > 5 }
# false

# Test #any?
p list.any? { |e| e == 2 }
# true
p list.any? { |e| e == 5 }
# false

# Test #filter
# list.filter {|e| e.even?}
# [2, 4]
