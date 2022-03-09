/*Solution 1*/
class Solution1 {
    func reverseString(_ s: inout [Character]) {
        var left = 0
        var right = s.count - 1
        
        while (left <= right){
            var temp = s[right]
            s[right] = s[left]
            s[left] = temp
            left += 1
            right -= 1
        }
        
    }
}

/*Solution 2*/
class Solution2 {
    func reverseString(_ s: inout [Character]) {
        var index = 0
        var count = s.count - 1
        
        while(index <= count){
            
            s.insert(s[count], at: index)
            s.remove(at: count + 1)
            index += 1
        }
    }
}
