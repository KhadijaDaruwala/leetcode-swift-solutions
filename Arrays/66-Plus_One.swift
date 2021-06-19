class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        
        var newDigits = digits
        
        for index in stride(from: newDigits.count - 1, through: 0, by: -1) {
            
            if newDigits[index] == 9 {
               newDigits[index] = 0
                
                 if index == 0{
                    newDigits.insert(1, at: 0)
                }
               
            } else {
                newDigits[index] = newDigits[index] + 1
                break
            }
        }
        
        return newDigits
        
    }
}
