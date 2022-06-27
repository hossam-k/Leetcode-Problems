# @param {Integer[]} nums
# @return {Integer}
def num_identical_pairs(nums)
    i, j,  sum, nums_hash = 0, 1, 0, {}
    while(i < nums.length)
        if nums_hash[nums[i]]
            nums_hash[nums[i]] = nums_hash[nums[i]] + 1
        else
            nums_hash[nums[i]] = 1
        end
       i = i + 1 
    end
    
    nums_hash.each_value do |value|
        sum = sum + (value * (value - 1) / 2)
    end
    sum
end