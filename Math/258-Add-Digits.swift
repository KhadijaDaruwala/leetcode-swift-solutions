class Solution {
    func addDigits(_ num: Int) -> Int {
        
        if num < 10 {
            return num
        }
        var sum = 0
        var no = num
        
        while no > 0 {
            let rem = no % 10
            no = no / 10
            sum = sum + rem
            
            if no == 0 {
                no = sum
                sum = 0
                if no < 10 {
                    return no
                    break
                }
            }
        }
        return sum
    }
}


