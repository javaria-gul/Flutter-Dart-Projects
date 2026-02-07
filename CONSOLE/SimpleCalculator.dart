import 'dart:io';

void main() {
  bool exitProgram = false;

  do {
    print("\n--- Smart Calculator ---");
    print("1. Addition (+)");
    print("2. Subtraction (-)");
    print("3. Multiplication (*)");
    print("4. Division (/)");
    print("5. Exit");
    stdout.write("Choose an option (1-5): ");
    
    String? choice = stdin.readLineSync();

    if (choice == '5') {
      exitProgram = true;
      print("Exiting... Khuda Hafiz!");
      break;
    }


    stdout.write("Enter first number: ");
    double num1 = double.parse(stdin.readLineSync()!);
    stdout.write("Enter second number: ");
    double num2 = double.parse(stdin.readLineSync()!);

 
    switch (choice) {
      case '1':
        print("Result: $num1 + $num2 = ${num1 + num2}");
        break;
      case '2':
        print("Result: $num1 - $num2 = ${num1 - num2}");
        break;
      case '3':
        print("Result: $num1 * $num2 = ${num1 * num2}");
        break;
      case '4':
        if (num2 != 0) {
          print("Result: $num1 / $num2 = ${num1 / num2}");
        } else {
          print("Error: Cannot divide by zero!");
        }
        break;
      default:
        print("Invalid choice! Please select between 1-5.");
    }

  } while (!exitProgram);
}