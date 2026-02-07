import 'dart:io';

void main() {
  double balance = 5000.0;
  int pin = 1234;

  print("--- Welcome to Dart Bank ---");
  stdout.write("Enter PIN: ");
  int enteredPin = int.parse(stdin.readLineSync()!);

  if (enteredPin == pin) {
    print("1. Check Balance\n2. Withdraw Cash");
    String? choice = stdin.readLineSync();
    if (choice == "1") {
      print("Your balance is: Rs.$balance");
    } else if (choice == "2") {
      stdout.write("Enter amount: ");
      double amount = double.parse(stdin.readLineSync()!);
      if (amount <= balance) {
        balance -= amount;
        print("Success! Remaining balance: Rs.$balance");
      } else {
        print("Insufficient funds!");
      }
    }
  } else {
    print("Incorrect PIN!");
  }
}