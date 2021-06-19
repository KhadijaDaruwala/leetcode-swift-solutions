extension StringProtocol {
    subscript(i: Int) -> String {
        return String(self[index(startIndex, offsetBy: i)])
    }
}

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        var resultIndex = 0
        let m = haystack.count
        let n = needle.count
        if needle.isEmpty {
            return 0
        }
        
        if m < n {
            return -1
        }
        
        if m == n {
            if ((haystack.elementsEqual(needle))){
                return 0
            } else {
                return -1
            }
        }
        
        for i in 0...m - n {
            for j in 0...n - 1 {
                if haystack[i+j] != needle[j]{
                    break
                } else {
                    if j == n-1 {
                        return i
                    }
                }
            }
        }
        
        return -1
        
    }
}
