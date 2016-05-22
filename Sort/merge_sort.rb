# MergeSort Module
module MergeSort
  def self.sort(array)
    return array if array.size == 1
    flag  = (array.size / 2).to_i
    left  = array[0..flag - 1]
    right = array[flag..array.size]
    merge(sort(left), sort(right))
  end

  def self.merge(left, right)
    result = []
    until left.empty? || right.empty?
      left.first < right.first ? result << left.shift : result << right.shift
    end
    result + left + right
  end

  private_class_method :merge
end
