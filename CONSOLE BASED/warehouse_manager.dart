import 'dart:io';

class Product {
  String name;
  int quantity;
  double price;

  Product(this.name, this.quantity, this.price);
}

void main() {
  Map<String, Product> inventory = {};

  while (true) {
    print("\n--- 📦 Warehouse Manager ---");
    print("1. Add/Update Product\n2. Sell Product\n3. View Inventory\n4. Exit");
    stdout.write("Choice: ");
    var choice = stdin.readLineSync();

    if (choice == '1') {
      stdout.write("Product Name: ");
      var name = stdin.readLineSync()!;
      stdout.write("Quantity: ");
      var qty = int.parse(stdin.readLineSync()!);
      stdout.write("Price: ");
      var price = double.parse(stdin.readLineSync()!);
      
      inventory[name] = Product(name, qty, price);
      print("Stock Updated!");
    } 
    else if (choice == '2') {
      stdout.write("Enter product to sell: ");
      var name = stdin.readLineSync()!;
      if (inventory.containsKey(name) && inventory[name]!.quantity > 0) {
        inventory[name]!.quantity--;
        print("Sold! Remaining: ${inventory[name]!.quantity}");
      } else {
        print("Out of stock or not found!");
      }
    }
    else if (choice == '3') {
      print("\n--- Current Stock ---");
      inventory.forEach((key, pro) {
        print("${pro.name}: ${pro.quantity} units @ Rs.${pro.price}");
      });
    } else if (choice == '4') break;
  }
}