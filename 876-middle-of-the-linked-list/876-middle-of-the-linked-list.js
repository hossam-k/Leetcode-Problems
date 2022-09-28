// Definition for singly-linked list.
function ListNode(val, next) {
  this.val = (val===undefined ? 0 : val)
  this.next = (next===undefined ? null : next)
}

/**
 * @param {ListNode} head
 * @return {ListNode}
 */
var middleNode = function(head) {
  if(head === null) return null;
  
  let count = 0;
  let current = head;
  let hash = {};
//   hash to set keys with count -> current_node
  while(current !== null){
    count ++;
    hash[count] = current;
    current = current.next;
  }
  if(count % 2 == 1) return hash[Math.ceil(count / 2)]
  return hash[(count / 2) + 1]
  };