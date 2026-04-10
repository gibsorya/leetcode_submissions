# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def num_subarray_product_less_than_k(nums, k)
    return 0 if k <= 1
    prod = 1
    left = 0
    count = 0
    for right in 0..(nums.length - 1) do
    
        prod *= nums[right]

        while prod >= k
            prod /= nums[left]
            left += 1
        end

        count +=  right - left + 1
    end
    count
end

#[10,5,2,6], k = 100
####
#______|______
# 
