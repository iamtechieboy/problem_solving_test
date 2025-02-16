class ListNode {
  int value;
  ListNode? next;

  ListNode(this.value);
}

bool hasCycle(ListNode? head) {
  if (head == null || head.next == null) return false;

  ListNode? slow = head;
  ListNode? fast = head;

  while (fast != null && fast.next != null) {
    slow = slow!.next; // Moves one step
    fast = fast.next!.next; // Moves two steps

    if (slow == fast) return true; // Cycle detected
  }

  return false; // No cycle
}

main() {
  final node1 = ListNode(1);
  final node2 = ListNode(2);
  node1.next = node2;
  node2.next = node1; // Creates cycle
  print('Cycle Detection Test: ${hasCycle(node1)}');
}
