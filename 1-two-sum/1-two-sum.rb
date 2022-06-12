# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    hash_map = {}
    nums.each_with_index do |number, index|
        diff = target - number
        if hash_map[diff]
            return [hash_map[diff], index]
        else
            hash_map[number] = index
        end
    end
end