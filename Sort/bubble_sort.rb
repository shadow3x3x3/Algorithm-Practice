# InsertionSort Moudle
module BubbleSort
  def self.sort(data)
    array = data.clone
    0.upto(data.size - 1) do |i|
      (i + 1).upto(data.size - 1) do |j|
        array[i], array[j] = array[j], array[i] if array[j] < array[i]
      end
    end
    array
  end
end
