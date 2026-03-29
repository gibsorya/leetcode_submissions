function searchRange(nums: number[], target: number): number[] {
    let L = 0, R = nums.length - 1;
    let startIndex = -1, endIndex = -1;

    while(L <= R) {
        let mid = Math.floor((R + L) / 2)
        if(nums[mid] === target) {
            startIndex = mid;
            R = mid - 1;
        } else if(nums[mid] < target) {
            L = mid + 1;
        } else {
            R = mid - 1;
        }
    }

    L = 0, R = nums.length - 1

    while(L <= R) {
        let mid = Math.floor((R + L) / 2)
        if(nums[mid] === target) {
            endIndex = mid;
            L = mid + 1;
        } else if(nums[mid] < target) {
            L = mid + 1;
        } else {
            R = mid - 1;
        }
    }

    return [startIndex, endIndex]
};
