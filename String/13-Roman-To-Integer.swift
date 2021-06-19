

extension StringProtocol {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}

class Solution {
    
    func romanToInt(_ s: String) -> Int {
        let romanDict = ["I":1, "V": 5, "X":10, "L":50, "C":100, "D":500, "M":1000]
        var resultNumber = romanDict[String(s[s.count-1])]!
        if s.count > 0 && s != nil {
            for index in stride(from: s.count - 1, through: 0, by: -1) {
                
                if index > 0{
                    if let charValue1 = romanDict[String(s[index])], let charValue2 = romanDict[String(s[index-1])]{
                        if charValue2 < charValue1 {
                            resultNumber = resultNumber - charValue2
                        } else {
                            resultNumber = resultNumber + charValue2
                        }
                    }
                }
            }
        }
        return resultNumber
    }
}
