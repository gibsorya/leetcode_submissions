# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    l = 0
    r = nums.length - 1

    while l <= r
        mid = (l + (r - l) / 2).floor
        return mid if nums[mid] == target

        if nums[mid] >= nums[l]
            if target >= nums[l] && target < nums[mid]
                r = mid - 1
            else
                l = mid + 1
            end
        else
            if target <= nums[r] && target > nums[mid]
                l = mid + 1
            else
                r = mid - 1
            end
        end
    end

    -1
end
