class KthLargest
    def initialize(k = 0, nums = [])
        @k = k
        @nums = nums
    end

    def add(val)
        @nums << val
        @nums.sort!
        @nums[@nums.size - @k]
    end
end

k = KthLargest.new(3, [4,5,8,2])
p k.add(3)
p k.add(5)
p k.add(10)
p k.add(9)
p k.add(4)
