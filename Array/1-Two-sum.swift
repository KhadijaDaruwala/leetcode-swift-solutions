/* Solution 1*/
class Solution1 {
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

/* Solution 2*/
class Solution2 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        
        for (i, num) in nums.enumerated() {
            if let index = dict[target - num] {
                if i != index {
                    return [index, i]
                }
            }
            dict[num] = i
        }
        return[0]
    }
}
