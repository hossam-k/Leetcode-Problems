
  // Definition for singly-linked list.
function ListNode(val, next) {
    this.val = (val===undefined ? 0 : val)
    this.next = (next===undefined ? null : next)
}
/**
 * @param {ListNode} head
 * @param {number} m
 * @param {number} n
 * @return {ListNode}
 */
var deleteNodes = function(head, m, n) {
    if(head == null) return null;
    
    let current = head;
    let traversed_m = 0;
    
//   1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 7 -> 8 -> 9 -> 10
  
    while(current !== null){
      traversed_m ++;
      if(traversed_m === m){
        current.next = traversedHead(current.next, n);
        current = current.next;
        traversed_m =0;
      }else{
      current = current.next;  
      }
    }
  return head;
};

// return should be traversed head
var traversedHead = function(head, n){

  if(head == null) return null;
  
  let current = head;
  let count = 0
  while(current !== null && count < n){
    count++;
    current = current.next;
  }
  return current;
}