/* Solution 1*/
class Solution1 {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var dictS: [Character: Int] = [:]
        s.forEach { (c) in
            dictS[c, default: 0] += 1
        }
        
        var dictT: [Character: Int] = [:]
        t.forEach { (c) in
            dictT[c, default: 0] += 1
        }
        return dictS == dictT
    }
}

/* Solution 2*/
class Solution2 {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        var dict = [Character : Int]()
        
        for i in s {
            dict[i] = dict[i] != nil ? dict[i]! + 1 : 1
        }
        
        for i in t {
            dict[i] = dict[i] != nil ? dict[i]! - 1 : 1
        }
        
        for (_,char) in s.enumerated() {
            if dict[char]! > 0 {
                return false
            }
        }
        
        for (_,char) in t.enumerated() {
            if dict[char]! > 0 {
                return false
            }
        }
        return true
    }
}
