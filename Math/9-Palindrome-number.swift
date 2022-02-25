class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        
        if x < 0{
            return false
        }
        var reverse = 0
        var num = x
        
        while (num > 0) {
            let temp = num % 10
            reverse = (reverse * 10) + temp
            num = num / 10
        }
        if reverse == x {
            return true
        }
        
        return false
    }
}
