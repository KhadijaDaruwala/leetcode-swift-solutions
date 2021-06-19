class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    var dict: [String: Int] = [String: Int]()
    
        if nums.count > 1 {
          for index in 0...nums.count - 1{
              if dict.keys.contains("\(nums[index])") {
                 if (abs((dict["\(nums[index])"]  as! Int) - index) <= k ) {
                     return true
                 }else{
                     dict["\(nums[index])"] = index
                 }
              } else {
                  dict["\(nums[index])"] = index
              }
          }
        }
        return false
    }
}
