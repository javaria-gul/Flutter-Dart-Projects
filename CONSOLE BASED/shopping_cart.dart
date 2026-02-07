void main() {
  List<double> cartItems = [1200.0, 500.0, 2300.0, 800.0];
  double total = cartItems.fold(0, (sum, item) => sum + item);

  print("Total Bill: Rs.$total");
  if (total > 4000) {
    double discount = total * 0.10; // 10% discount
    print("Discount (10%): -Rs.$discount");
    print("Final Payable: Rs.${total - discount}");
  } else {
    print("No discount applicable below Rs.4000");
  }
}