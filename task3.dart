import 'dart:io';
 void main(){
  // This program performs basic arithmetic operations and comparisons on two numbers
  // input first and second numbers, and an operation choice from the user.
   print("Enter the first number:");
   var firstNumber = stdin.readLineSync();
   
   print("Enter the second number:");
   var secondNumber = stdin.readLineSync();

   print("Enter the operation(Enter the number)\n1. Add\n2. Subtract\n3. Multiply\n4. Divide\n5. Modulus\n6. compare\n7. stop");
   var operation = stdin.readLineSync();

    // Validate the input for first and second numbers
    // If the input is null or not a valid number, prompt the user to enter valid numbers or operators
   if(firstNumber == null || secondNumber == null || operation == null) {
      print("Invalid input. Please enter valid numbers and operation.");
      return;
    }
    // Parse the input numbers and check if they are valid
  var num1 = double.tryParse(firstNumber);
  var num2 = double.tryParse(secondNumber);
  if (num1 == null || num2 == null) {
      print("Invalid input. Please enter valid numbers.");
      return;
    }
  // Loop to perform operations until the user chooses to stop
  
    do {
      
    // Perform the operation based on user input
    // Check the operation choice and perform the corresponding arithmetic operation or comparison
        switch (operation) {
  
      case '1':
        var sum = num1 + num2;
        print("The sum of $num1 and $num2 is: $sum");
        break;
      case '2':
        var difference = num1 - num2;
        print("The difference between $num1 and $num2 is: $difference");
        break;
      case '3':
        var product = num1 * num2;
        print("The product of $num1 and $num2 is: $product");
        break;
      case '4':
        if (num2 == 0) {
          print("Cannot divide by zero.");
        } else {
          var quotient = num1 / num2;
          print("The quotient of $num1 and $num2 is: $quotient");
        }
        break;
      case '5':
        if (num2 == 0) {
          print("Cannot perform modulus with zero.");
        } else {
          var modulus = num1 % num2;
          print("The modulus of $num1 and $num2 is: $modulus");
        }
        break;
      case '6':
        if (num1 > num2) {
          print("$num1 is greater than $num2");
        } else if (num1 < num2) {
          print("$num1 is less than $num2");
        } else {
          print("$num1 is equal to $num2");
        }
        break;
      case '7':
        print("Exiting the program.");
        return;
      default:
        print("Invalid operation. Please enter a valid number.");
    }
    // Prompt the user for the next operation
      print("Enter the operation(Enter the number)\n1. Add\n2. Subtract\n3. Multiply\n4. Divide\n5. Modulus\n6. compare\n7. stop");
      operation = stdin.readLineSync();
    // Validate the operation input  
      if (operation == null) {
        print("Invalid input. Please enter a valid operation.");
        return;
      }
      
    } while (operation != '7');
    

 }