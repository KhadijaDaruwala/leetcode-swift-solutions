/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        if l1 == nil {
            return l2
        }else if l2 == nil {
            return l1
        } else if l1 == nil && l2 == nil {
            return nil
        }
        
        // Select the list with the lowest starting point as our starting list
        var firstList: ListNode? = l1!.val < l2!.val ? l1 : l2
        var secondList: ListNode? = l1!.val < l2!.val ? l2 : l1
        
        while secondList != nil {
            
            while firstList!.next != nil {
                
                if secondList!.val <= firstList!.next!.val {
                    let temp = firstList!.next
                    firstList!.next = secondList
                    secondList = temp
                }
                firstList = firstList!.next
            }
            
            if firstList!.next == nil {
                firstList!.next = secondList
                break
            }
        }
        
        // Return the first node of the starting list.
        return l1!.val < l2!.val ? l1 : l2
    }
}
