require_relative 'exchange_sort'

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
    ExchangeSort.sort(@data)
  end
end

s = Sort.new([9, 5, 6, 4, 7, 10, 12, 8])
p s.exchange_sort
