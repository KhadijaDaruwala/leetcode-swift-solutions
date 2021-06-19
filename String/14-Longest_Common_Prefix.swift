
class Solution {
    
    func longestCommonPrefix(_ strs: [String]) -> String {
        var resultString = strs[0]
        
        if strs.count > 0 {
            strs.forEach({
                while !$0.hasPrefix(resultString) {
                    resultString = String(resultString.dropLast())
                }
            })
        }
        return resultString
    }
}
