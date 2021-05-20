class Solution {
    public int minMoves2(int[] nums) {
        Arrays.sort(nums);
        int minMoves = 0;
        int median = nums[nums.length / 2];
        for(int num : nums){
            minMoves += Math.abs(median - num);
        }
        
        return minMoves;
//         while(true){
//             int currentNum = nums[i];
//             if(currentNum < lastNum){
//                 lastNum = nums[i];
//                 nums[i] += 1;
//                 minMoves++;
//             } else if(currentNum == lastNum){
//                 if(i == (nums.length - 1)){
//                     return minMoves;
//                 }
//                 i++;
//                 continue;
//             } else {
//                 lastNum = nums[i];
//                 nums[i] -= 1;
//                 minMoves++;
//             }
            
//             i++;
//             if(i == (nums.length)){
//                    i = 0;
//                 }
        }
    }
