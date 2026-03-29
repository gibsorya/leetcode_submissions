/**
 * @param {number[]} nums
 * @return {number}
 */
var findMin = function(nums) {
    let l = 0, r = nums.length - 1;
    let result = nums[0];

    while (l <= r) {
        if(nums[l] < nums[r]) {
            result = Math.min(result, nums[l]);
            break;
        }

        let mid = l + Math.floor((r - l) / 2);
        result = Math.min(result, nums[mid]);

        if(nums[mid] >= nums[l]) {
            l = mid + 1;
        } else {
            r = mid - 1;
        }
    }

    return result;
};
