import 'dart:io';

void main() {
  print("Загадайте число от 1 до 100.");
  binarySearch();
}

void binarySearch() {
  int min = 1;
  int max = 100;
  int count = 0;

  while (min <= max) {
    count++;
    int middle = (min + max) ~/ 2;
    print("Is it $middle? ");
    String input = stdin.readLineSync()!;

    if (input == "yes") {
      print("Got it in $count steps!");
      return; 
    } else if (input == "greater") {
      min = middle + 1;
    } else if (input == "less") {
      max = middle - 1;
    } else {
      print("Введите 'yes', 'greater' или 'less'");
    }
  }

  if (min > max) {
    print("Не могу угадать число");
  }
}
