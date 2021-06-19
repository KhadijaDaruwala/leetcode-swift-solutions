class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var count = 0
        var index = 0
        
        if nums.count > 1{
            while count < nums.count{
                if nums[index] == 0 {
                    nums.remove(at: index)
                    nums.append(0)
                } else {
                    index += 1
                }
                count += 1
            }
        }
    }
}
