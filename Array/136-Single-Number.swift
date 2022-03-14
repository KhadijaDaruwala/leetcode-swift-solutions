/* Solution 1*/
class Solution1 {
    func singleNumber(_ nums: [Int]) -> Int {
        if nums.count == 1 {
            return nums[0]
        }
        var dict = [Int: Int]()
        for i in 0...nums.count - 1 {
            dict[nums[i]] = dict[nums[i]] == nil ? 1 : dict[nums[i]]! + 1
        }
        for (key, value) in dict {
            if value == 1{
                return key
            }
        }
        return 0
    }
}

/* Solution 2*/
class Solution2 {
    func singleNumber(_ nums: [Int]) -> Int {
        var count = 0
        for index in 0...nums.count - 1{
            count = count ^ nums[index]
        }
        return count
    }
}
