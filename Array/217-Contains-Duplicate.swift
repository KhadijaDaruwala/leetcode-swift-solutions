class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        
        var dict: [Int: Bool] = [Int: Bool]()
        if nums.count > 1 {
            for i in 0...nums.count - 1{
                if dict.keys.contains(nums[i]) {
                    return true
                } else {
                    dict[nums[i]] = true
                }
            }
        }
        return false
    }
}
