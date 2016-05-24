# BucketSort Moudle
module BucketSort
  def self.sort(data)
    bucket = {}
    result = []
    data.each do |e|
      sym = "B-#{e}".to_sym
      bucket[sym].nil? ? bucket[sym] = e : bucket[sym] << e
    end
    0.upto(data.max) { |i| result << bucket["B-#{i}".to_sym] }
    result.compact
  end
end
