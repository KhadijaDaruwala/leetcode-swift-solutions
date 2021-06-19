extension StringProtocol {
    subscript(i: Int) -> String {
        return String(self[index(startIndex, offsetBy: i)])
    }
}

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var resultLength = 0
        var s = s.trimmingCharacters(in: .whitespacesAndNewlines)
        if s.count == 0 {
            return 0
        }
        
        for index in stride(from:s.count - 1, through: 0, by: -1){
            if s[index] == " "{
                return resultLength
            } else {
                resultLength = resultLength + 1
                if index == 0{
                    return resultLength
                }
            }
            
        }
        return resultLength
    }
}
