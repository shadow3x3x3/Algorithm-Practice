# QuickSort Moudle
module QuickSort
  def self.sort(array)
    return array if array.size < 2
    left, right = array[0..-2].partition { |y| y <= array.last }
    sort(left) + [array.last] + sort(right)
  end
end
