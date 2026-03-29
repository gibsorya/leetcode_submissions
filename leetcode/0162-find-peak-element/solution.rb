# @param {Integer[]} nums
# @return {Integer}
def find_peak_element(nums)
    l = 0
    r = nums.length - 1
    
    while l <= r
        mid = l + ((r - l) / 2).floor
        
        return mid if mid != (nums.length - 1) && nums[mid] > nums[mid - 1] && nums[mid] > nums[mid + 1]
        
        if mid != (nums.length - 1) && nums[mid] < nums[mid + 1]
            l = mid + 1
        else
            r = mid - 1
        end
    end
    
    
    l
end
