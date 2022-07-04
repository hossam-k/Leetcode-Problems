# @param {Integer[]} nums
# @return {Integer[]}
def smaller_numbers_than_current(nums)
    hash = {}
    copy_nums = nums.sort
    copy_nums.each_with_index do |value, index|
        hash[value] = index unless hash[value]
    end
    nums.map! do |element|
        element = hash[element]
    end   
    nums
end