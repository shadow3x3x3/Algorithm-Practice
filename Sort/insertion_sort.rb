# InsertionSort Moudle
module InsertionSort
  def self.sort(data)
    sort_array = data.clone
    sorted = []

    sorted = insert(sorted, sort_array.pop) until sort_array.empty?
    sorted
  end

  def self.insert(sorted, insert_elem)
    return [insert_elem] if sorted.empty?
    new_array = sorted.clone
    sorted.each_with_index do |s, i|
      return new_array.insert(i, insert_elem) if insert_elem < s
    end
    new_array << insert_elem
  end
end
