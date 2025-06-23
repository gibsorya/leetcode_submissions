function findMedianSortedArrays(nums1: number[], nums2: number[]): number {
    let combined = nums1.concat(nums2).sort((a, b) => a - b)
    

    let median = 0;

    if (combined.length % 2 === 0) {
        let val1 = combined[combined.length / 2]
        let val2 = combined[(combined.length / 2) - 1]


        median = (val1 + val2) / 2
    } else {
        median = combined[(combined.length / 2) - 0.5]
    }
    return median
};

// length = 8
// 8 / 2 = index[4]
// 4 / 2 - 1

// length = 7
 
