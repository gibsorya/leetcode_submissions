function searchInsert(nums: number[], target: number): number {
    let result = 0;
    let L = 0, R = nums.length - 1

    while (L <= R) {
        let mid =  Math.floor((L + R) / 2)
        if(nums[mid] === target) {
            return mid;
        } else if(nums[mid] > target) {
            R = mid - 1
        } else {
            L = mid + 1
        }
    }

    return L;
};
