import 'dart:io';

class Question {
  String text;
  String answer;
  Question(this.text, this.answer);
}

void main() {
  List<Question> bank = [
    Question("What is the capital of Pakistan?", "Islamabad"),
    Question("Is Dart an OOP language? (yes/no)", "yes"),
    Question("Can Flutter build web apps? (yes/no)", "yes"),
  ];

  int score = 0;
  print("---  Quiz Master ---");

  for (var q in bank) {
    print("\nQ: ${q.text}");
    stdout.write("Your Answer: ");
    var userAns = stdin.readLineSync();
    
    if (userAns?.toLowerCase() == q.answer.toLowerCase()) {
      print(" Correct!");
      score += 10;
    } else {
      print(" Wrong! Correct was: ${q.answer}");
    }
  }

  print("\n--- Final Score: $score/30 ---");
}