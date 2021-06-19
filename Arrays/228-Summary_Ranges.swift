class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        var resultArray = [String]()
        var startIndex = 0
        if nums.count == 0{
            return resultArray
            
        }
        if nums.count == 1{
            resultArray.append("\(nums[0])")
            return resultArray
        }
        
        
        
        for index in 0...nums.count - 1 {
            if index < nums.count - 1 {
                
                if nums[index + 1] != nums[index] + 1{
                    if startIndex != index{
                        resultArray.append("\(nums[startIndex])->\(nums[index])")
                    }else {
                        resultArray.append("\(nums[index])")
                    }
                    startIndex = index + 1
                }
            } else {
                if startIndex != index{
                    resultArray.append("\(nums[startIndex])->\(nums[index])")
                }else {
                    resultArray.append("\(nums[index])")
                }
            }
        }
        return resultArray
    }
}
