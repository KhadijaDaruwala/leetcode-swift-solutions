class Solution {
    func reverse(_ x: Int) -> Int {
        var absX = abs(x)
        var result = 0
        while absX > 0 {
            let lastDigit = absX % 10
            absX = absX / 10
            result = result * 10 + lastDigit
            if result > Int32.max {
                return 0
            }
        }
        if x < 0 {
            return -result
        }
        return result
    }
}
