import 'dart:io';

void main() {
  while (true) {
    print("Enter String to find that it is palindrome or not?");
    String input = stdin.readLineSync() as String;
    isPalindrome(input);
    print("do you want to terminate program?(y/n)");
    if ((stdin.readLineSync() as String) == 'y') {
      break;
    } else {
      continue;
    }
  }
}

void isPalindrome(String input) {
  List<String> l1 = [];
  for (int i = input.length - 1; i >= 0; i--) {
    l1.add(input[i]);
  }
  bool check = false;
  for (int i = l1.length - 1; i >= 0; i--) {
    if (l1[i] == input[i]) {
      check = true;
      continue;
    } else {
      check = false;
      break;
    }
  }
  if (check == false) {
    print("Entered String is not Palindrome!!");
  } else {
    print("Entered String is Palindrome!!");
  }
}
