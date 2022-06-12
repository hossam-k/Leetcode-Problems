# @param {Integer[]} nums
# @return {Integer[]}
def get_concatenation(nums)
    new_arr = []
    i = 0
    while(i < nums.length) do
        j = nums.length + i
        new_arr[i] = nums[i]
        new_arr[j] = nums[i]
        i = i + 1
    end
    new_arr
end