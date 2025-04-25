void main() {
  Student std1 = Student();

  print(std1.getnum);
}

class Student {
  int _num = 1;

  Student();
  int get getnum {
    return _num;
  }
}
