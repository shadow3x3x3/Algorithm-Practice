# ExchangeSort Moudle
module ExchangeSort
  def self.sort(data)
    sort_array = data.clone
    0.upto(data.size - 1) do |i1|
      0.upto(data.size - 1) do |i2|
        if sort_array[i2] > sort_array[i1]
          sort_array[i1], sort_array[i2] = sort_array[i2], sort_array[i1]
        end
      end
    end
    sort_array
  end
end
