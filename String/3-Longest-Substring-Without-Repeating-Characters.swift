class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var startIndex = 0
        var longest = 0
        var charDict = [Character: Int]()
        
        for(index, char) in s.enumerated(){
            if let foundIndex = charDict[char]{
                startIndex = max(foundIndex + 1, startIndex)
            }
            charDict[char] = index
            longest = max(longest, (index-startIndex) + 1)
        }
        return longest
    }
}
