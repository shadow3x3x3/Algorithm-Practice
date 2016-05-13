# Sort Algorithm
class Sort
  def initialize(data)
    if data.class == Array
      @data = data
    else
      raise ArgumentError, 'Data type need to be a Array'
    end
  end

  def exchange_sort
    sort_array = @data.clone
    (0..sort_array.size - 1).each do |i1|
      (0..sort_array.size - 1).each do |i2|
        if sort_array[i2] > sort_array[i1]
          sort_array[i1], sort_array[i2] = sort_array[i2], sort_array[i1]
        end
      end
    end
    sort_array
  end
end

s = Sort.new([9, 5, 6, 4, 7, 10, 12, 8])
p
