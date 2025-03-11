void main() {
  int a = 100;
  int b = 200;
  int c = 300;

  print(findLargest(a, b, c));
}

int findLargest(int a, int b, int c) {
  if (a > c && a < b) {
    return a;
  } else if (b > c && b < a) {
    return b;
  } else {
    return c;
  }
}
