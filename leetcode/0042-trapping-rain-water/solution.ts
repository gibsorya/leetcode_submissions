function trap(height: number[]): number {
    let result = 0;

    let l = 0, r = height.length - 1;

    let leftMax = height[l], rightMax = height[r]

    while (l < r) {
        if(leftMax < rightMax) {
            l++;
            leftMax = Math.max(leftMax, height[l]);
            result += leftMax - height[l];
        } else {
            r--;
            rightMax = Math.max(rightMax, height[r])
            result += rightMax - height[r]
        }
    }

    return result;
};
