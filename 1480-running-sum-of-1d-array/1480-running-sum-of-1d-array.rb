# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
    nums_arr = []
    aggregated_sum = 0
    nums.each do |number|
        aggregated_sum += number
        nums_arr << aggregated_sum
    end
    return nums_arr
end