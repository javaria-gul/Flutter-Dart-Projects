import 'dart:io';

void main() {
  List<String> todos = [];
  while (true) {
    print("\n1. Add Task\n2. View Tasks\n3. Exit");
    String choice = stdin.readLineSync()!;
    if (choice == "1") {
      stdout.write("Enter task: ");
      todos.add(stdin.readLineSync()!);
    } else if (choice == "2") {
      print("Your Tasks: $todos");
    } else {
      break;
    }
  }
}