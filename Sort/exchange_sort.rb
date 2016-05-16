# ExchangeSort Moudle
module ExchangeSort
  def self.sort(data)
    sort_array = data.clone
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
