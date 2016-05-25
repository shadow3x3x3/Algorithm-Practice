# InsertionSort Moudle
module BeadSort
  def self.sort(list)
    poles = Array.new(list.max, 0)
    list.each do |e|
      poles.map! do |pole|
        break if e == 0
        e -= 1
        pole += 1
      end
    end
    drop(list, poles)
  end

  def self.drop(list, poles)
    result = []
    list.size.downto(1) do |i|
      sum = 0
      poles.each do |pole|
        sum += 1 if pole >= i
      end
      result << sum
    end
    result
  end
end
