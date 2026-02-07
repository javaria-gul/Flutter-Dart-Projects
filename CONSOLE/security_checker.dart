import 'dart:io';

void main() {
  print("---  Password Security Auditor ---");
  stdout.write("Enter password to test: ");
  String pass = stdin.readLineSync()!;

  bool hasMinLength = pass.length >= 8;
  bool hasUppercase = pass.contains(RegExp(r'[A-Z]'));
  bool hasDigits = pass.contains(RegExp(r'[0-9]'));
  bool hasSpecial = pass.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

  int score = 0;
  if (hasMinLength) score++;
  if (hasUppercase) score++;
  if (hasDigits) score++;
  if (hasSpecial) score++;

  print("\nAnalysis:");
  print("- Length 8+: ${hasMinLength ? '✅' : '❌'}");
  print("- Uppercase: ${hasUppercase ? '✅' : '❌'}");
  print("- Numbers:   ${hasDigits ? '✅' : '❌'}");
  print("- Symbols:   ${hasSpecial ? '✅' : '❌'}");

  List<String> levels = ["Very Weak", "Weak", "Medium", "Strong", "Very Strong"];
  print("\nSecurity Level: ${levels[score]}");
}