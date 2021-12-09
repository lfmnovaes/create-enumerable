module MyEnumerable
  def all?
    @list.each do |item|
      return false unless yield item
    end
    true
  end

  def any?
    @list.each do |item|
      return true if yield item
    end
    false
  end
end
