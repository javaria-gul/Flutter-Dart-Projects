import 'dart:io';

void main() {
  print("---  Caesar Cipher Tool ---");
  stdout.write("Enter Message: ");
  String message = stdin.readLineSync()!;
  stdout.write("Enter Shift Key (1-25): ");
  int key = int.parse(stdin.readLineSync()!);

  String encrypt(String text, int shift) {
    return text.runes.map((int rune) {
      if (rune >= 65 && rune <= 90) { // Uppercase
        return ((rune - 65 + shift) % 26) + 65;
      } else if (rune >= 97 && rune <= 122) { // Lowercase
        return ((rune - 97 + shift) % 26) + 97;
      }
      return rune;
    }).map((rune) => String.fromCharCode(rune)).join();
  }

  String encrypted = encrypt(message, key);
  print("\nEncrypted: $encrypted");
  print("Decrypted: ${encrypt(encrypted, 26 - key)}");
}