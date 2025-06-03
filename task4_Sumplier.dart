import 'dart:io';

void main(){

  print("Enter the number:");
  var number = stdin.readLineSync();
  // Validate the input for the number
  if (number == null) {
    print("Invalid input. Please enter a valid number.");
    return;
  } 
  // Parse the input number and check if it is valid
  var num = int.tryParse(number);
  if (num == null) {
    print("Invalid input. Please enter a valid number.");
    return;
  } 

  int sum = 0;
  for (int i = 1; i <= 10; i++) {
    // Calculate the product of the number and the multiplier
    var product = num * i;
    // Print the multiplication table
    print("$num x $i = $product");
    // Add the product to the sum
    sum += product;
  }
  // Print the total sum of the products
  print("The total sum of the products is: $sum");

}
