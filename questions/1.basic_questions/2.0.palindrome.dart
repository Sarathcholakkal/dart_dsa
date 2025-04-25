void main(List<String> args) {
  String name = 'sarath';
  int n = name.length ~/ 2;
  bool isPalindrome = true;
  for (int i = 0; i <= n; i++) {
    if (name[i] != name[(name.length - 1 - i)]) {
      isPalindrome = false;
    }
  }

  if (isPalindrome) {
    print("given string is palindrome");
  } else {
    print("given string is not palindrome");
  }
}
