class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        
        var rightPointer = numbers.count - 1
        var leftPointer = 0
        
        while(leftPointer < rightPointer){
            if numbers[leftPointer] + numbers[rightPointer] > target {
                rightPointer = rightPointer - 1
            }else if numbers[leftPointer] + numbers[rightPointer] < target{
                leftPointer = leftPointer + 1
            }else {
                return [leftPointer + 1, rightPointer + 1]
            }
        }
        
        return [-1,-1]
    }
}
