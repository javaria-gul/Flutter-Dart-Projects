import 'dart:io';

void main() {
  stdout.write("Set a 4-digit secret PIN (e.g. 8542): ");
  String secret = stdin.readLineSync()!;
  
  if (secret.length != 4 || int.tryParse(secret) == null) {
    print("Invalid PIN! Must be 4 digits.");
    return;
  }

  print("\nStarting Brute-Force Simulation...");
  DateTime start = DateTime.now();

  for (int i = 0; i <= 9999; i++) {
    // Pad left adds zeros like '0001'
    String guess = i.toString().padLeft(4, '0');
    
    if (guess == secret) {
      DateTime end = DateTime.now();
      Duration diff = end.difference(start);
      print(" Target Found: $guess");
      print("⏱ Time taken: ${diff.inMilliseconds} milliseconds");
      break;
    }
  }
}