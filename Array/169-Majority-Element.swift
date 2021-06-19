class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        
        var resultNumber = nums[0]
        var maxCount = 1
        
        var dict: [String: Int] = [String: Int]()
        
        if nums.count > 1{
            for index in 1...nums.count - 1{
                if nums[index] == resultNumber{
                    maxCount = maxCount + 1
                }else {
                    maxCount = maxCount - 1
                }
                
                if maxCount == 0{
                    maxCount = 1
                    resultNumber = nums[index]
                }
            }
        }
        
        return resultNumber
    }
}
