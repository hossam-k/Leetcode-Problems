
 // * Definition for singly-linked list.
function ListNode(val, next) {
    this.val = (val===undefined ? 0 : val)
    this.next = (next===undefined ? null : next)
}

/**
 * @param {ListNode} head
 * @return {number}
 */
var getDecimalValue = function(head) {
    if(head.val == null) return 0;
    
    let current = head;
    let number = '';
    
    while(current !== null){
        number += current.val;        
        current = current.next;
    }
    return parseInt(number, 2); 
};