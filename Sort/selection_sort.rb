# SelectionSort Module
module SelectionSort
  def self.sort(data)
    array = data.clone
    0.upto(data.size - 1) do |i1|
      min_index = i1
      i1.upto(data.size - 1) do |i2|
        min_index = i2 if array[i2] < array[min_index]
      end
      array[i1], array[min_index] = array[min_index], array[i1]
    end
    array
  end
end
