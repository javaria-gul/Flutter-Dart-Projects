import 'dart:io';

void main() {
  print("1. Celsius to Fahrenheit\n2. Fahrenheit to Celsius");
  String choice = stdin.readLineSync()!;
  stdout.write("Enter Temperature: ");
  double temp = double.parse(stdin.readLineSync()!);

  if (choice == "1") {
    print("${(temp * 9 / 5) + 32} °F");
  } else {
    print("${(temp - 32) * 5 / 9} °C");
  }
}