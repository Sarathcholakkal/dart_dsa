int fibonacci(int n) {
  if (n <= 1) {
    return n; // base case: F(0) = 0, F(1) = 1
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

void main() {
  int terms = 10;

  print('Fibonacci sequence using recursion:');
  for (int i = 0; i < terms; i++) {
    print(fibonacci(i));
  }
}
