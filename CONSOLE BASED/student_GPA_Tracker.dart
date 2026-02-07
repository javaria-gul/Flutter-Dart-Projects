import 'dart:io';

void main() {
  List<Map<String, dynamic>> students = [];

  while (true) {
    print("\n---  University Portal ---");
    print("1. Register Student\n2. Show Merit List\n3. Exit");
    var choice = stdin.readLineSync();

    if (choice == '1') {
      stdout.write("Student Name: ");
      var name = stdin.readLineSync()!;
      List<int> marks = [];
      for (var i = 1; i <= 3; i++) {
        stdout.write("Subject $i Marks: ");
        marks.add(int.parse(stdin.readLineSync()!));
      }
      double avg = marks.reduce((a, b) => a + b) / marks.length;
      students.add({"name": name, "avg": avg});
    } 
    else if (choice == '2') {
      // Sorting students by average (High to Low)
      students.sort((a, b) => b['avg'].compareTo(a['avg']));
      print("\n--- Merit List ---");
      for (var s in students) {
        print("${s['name']} - Avg: ${s['avg'].toStringAsFixed(2)}");
      }
    } else if (choice == '3') break;
  }
}