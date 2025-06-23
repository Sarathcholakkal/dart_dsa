void main() {
  String name = 'malayalam';

  String reversedname = name.split("").reversed.join("");
  if (reversedname == name) {
    print("the String is pallindrome");
  } else {
    print("the string is not palindrome");
  }
}
