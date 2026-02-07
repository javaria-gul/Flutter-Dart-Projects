import 'dart:io';

void main() {
  Map<String, String> users = {"admin": "pass123", "user1": "hello99"};
  stdout.write("Username: ");
  String user = stdin.readLineSync()!;
  stdout.write("Password: ");
  String pass = stdin.readLineSync()!;

  if (users.containsKey(user) && users[user] == pass) {
    print("Login Successful! Welcome $user");
  } else {
    print("Invalid Credentials.");
  }
}