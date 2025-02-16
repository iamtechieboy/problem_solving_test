int customFibonacci(int n, int first, int second) {

  // Edge cases
  if (n <= 0) return -1;
  if (n == 1) return first;
  if (n == 2) return second;

  int a = first, b = second, next;

  for (int i = 3; i <= n; i++) {
    next = a + b; // Next element
    a = b;
    b = next;
    print(b);
  }

  return b;
}

void main() {
  print('Custom Fibonacci Test: ${customFibonacci(6, 3, 5)}');
}