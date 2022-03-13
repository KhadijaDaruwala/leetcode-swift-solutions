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

/*Solution 1*/
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        if list1 == nil && list2 == nil {
            return nil
        }
        if list1 == nil {
            return list2
        }
        
        if list2 == nil {
            return list1
        }
        
        var dummy = ListNode()
        var l1 = list1
        var l2 = list2
        
        var head = dummy
        
        while l1 != nil && l2 != nil {
            if l1!.val <= l2!.val {
                dummy.next = l1
                l1 = l1!.next
            } else {
                dummy.next = l2
                l2 = l2!.next
            }
            
            dummy = dummy.next!
        }
        
        dummy.next = (l1 == nil) ? l2 : l1
        return head.next
    }
}

/*Solution 2*/
class Solution2 {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        if list1 == nil && list2 == nil {
            return nil
        }
        if list1 == nil {
            return list2
        }
        
        if list2 == nil {
            return list1
        }
        
        var dummy = ListNode()
        var l1 = list1
        var l2 = list2
        
        var head = dummy
        
        while l1 != nil && l2 != nil {
            if l1!.val <= l2!.val {
                dummy.next = l1
                l1 = l1!.next
            } else {
                dummy.next = l2
                l2 = l2!.next
            }
            
            dummy = dummy.next!
        }
        
        dummy.next = (l1 == nil) ? l2 : l1
        return head.next
    }
}
