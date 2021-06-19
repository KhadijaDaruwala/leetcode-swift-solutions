class Solution {
  func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [Int]()
        var dict = [Int : Int]()
        for i in 0...nums.count - 1{
            if dict.keys.contains(nums[i]){
                result = [dict[nums[i]]!,i]
            } else {
                let diff = target - nums[i]
                dict[diff] = i
            }
        }
        return result
    }
}
