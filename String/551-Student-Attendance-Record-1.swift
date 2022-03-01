class Solution {
    func checkRecord(_ s: String) -> Bool {
        
        let array = Array(s)
        var absCount = 0
        var lateCount = 0
        var index = 0
        
        while index < array.count {
            if array[index] == "A"{
                absCount += 1
            }
            if array[index] == "L" && lateCount == 0 {
                lateCount += 1
            } else if array[index] == "L" && lateCount < 3{
                lateCount += 1
                if lateCount >= 3 {
                    return false
                }
            } else {
                lateCount = 0
            }
            index += 1
        }
        if absCount >= 2{return false}
        
        return true
    }
}
