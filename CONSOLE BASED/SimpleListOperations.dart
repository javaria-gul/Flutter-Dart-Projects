void main() {
  List<int> numbers = [10, 25, 5, 40, 15];

  print("Numbers in list: $numbers");

  int sum = 0;
  for (int n in numbers) {
    sum += n;
  }
  print("Sum of numbers: $sum");

  int max = numbers[0];
  for (int n in numbers) {
    if (n > max) {
      max = n;
    }
  }
  print("Largest number: $max");
}