import 'dart:io';

void main(){

print("Enter the first number:");
var firstNumber = stdin.readLineSync();
  
  print("Enter the second number:");
  var secondNumber = stdin.readLineSync();
  
  if (firstNumber == null || secondNumber == null) {
    print("Invalid input. Please enter valid numbers.");
    return;
  }
  
  var num1 = double.tryParse(firstNumber);
  var num2 = double.tryParse(secondNumber);
  
  if (num1 == null || num2 == null) {
    print("Invalid input. Please enter valid numbers.");
    return;
  }
  
  var sum = num1 + num2;
  print("The sum of $num1 and $num2 is: $sum");
}