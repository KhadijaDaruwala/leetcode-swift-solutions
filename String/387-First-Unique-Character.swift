class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var dict = [Character : Int]()
        for i in s {
            dict[i] = dict[i] != nil ? dict[i]! + 1 : 1
        }
        
        for (index,char) in s.enumerated() {
            if dict[char] == 1{
                return index
            }
        }
        return -1
    }
}
