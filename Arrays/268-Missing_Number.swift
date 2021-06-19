class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        
        var sum = 0
        for i in 0...nums.count - 1{
            sum = sum + nums[i]
        }
        
        var n = nums.count
        var missingNumber = (n * (n+1)/2) - sum
        
        return missingNumber
    }
}
