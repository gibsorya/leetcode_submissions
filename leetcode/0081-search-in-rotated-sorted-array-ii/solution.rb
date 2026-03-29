# @param {Integer[]} nums
# @param {Integer} target
# @return {Boolean}
def search(nums, target)
    l = 0
    r = nums.length - 1

    while l <= r
        puts "#{l},#{r}"
        pivot = (l + (r - l) / 2).floor

        return true if nums[pivot] == target

        if nums[l] == nums[pivot] && nums[r] == nums[pivot]
            l += 1
            r -= 1
        elsif nums[pivot] >= nums[l]
            if target >= nums[l] && target < nums[pivot]
                r = pivot - 1
            else
                l = pivot + 1
            end
        else
            if target <= nums[r] && target > nums[pivot]
                l = pivot + 1
            else
                r = pivot - 1
            end
        end
    end

    return false
end

def is_binary_search_helpful(nums, from, to)
    nums[from] != nums[to]
end
