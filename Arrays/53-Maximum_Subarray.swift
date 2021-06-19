class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
       var resultMax = nums[0], currentMax = nums[0]
       
        if nums.count > 1{
         for index in 1...nums.count - 1{
            var temp = currentMax + nums[index]
            currentMax = max(temp, nums[index])
            resultMax = max(resultMax, currentMax)
           }
        }
        return resultMax
    }
}
