/**
 Do not return anything, modify nums in-place instead.
 */
function sortColors(nums: number[]): void {
    let counts = new Map<number, number>()
    for(let i = 0; i < nums.length; i++) {
        if(counts.has(nums[i])) {
            counts.set(nums[i], counts.get(nums[i]) + 1);
        } else {
            counts.set(nums[i], 1)
        }
    }

    let currentColor = 0;
    for(let i = 0; i < nums.length;) {
        let count = 0;
        while(count < counts.get(currentColor)) {
            nums[i] = currentColor;
            count++;
            i++;
        }
        currentColor++;
    }
};
