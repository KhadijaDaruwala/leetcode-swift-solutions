class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        
        var i = m - 1
        var j = n - 1
        var pointer = nums1.count - 1
        
        while(pointer >= 0){
            
            if i < 0 {
                nums1[pointer]  = nums2[j]
                j = j - 1
            }else  if j < 0 {
                nums1[pointer]  = nums1[i]
                i = i - 1
            }else{
                if nums1[i] > nums2[j]{
                    nums1[pointer] = nums1[i]
                    i = i - 1
                }else{
                    nums1[pointer] = nums2[j]
                    j = j - 1
                    
                }
            }
            
            pointer = pointer - 1
        }
    }
}
