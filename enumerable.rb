module MyEnumerable
  def any?
    each { |i| return true if yield(i) }
    false
  end

  def all?
    each { |i| return false unless yield(i) }
    true
  end

  def filter
    filtered_arr = []
    each { |i| filtered_arr << i if yield(i) }
    filtered_arr
  end
end
