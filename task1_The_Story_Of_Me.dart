import 'dart:io';
void main(){
  print("Enter your name:");
  var name = stdin.readLineSync();

  print("Enter your phone number:");
  var phoneNumber = stdin.readLineSync();
  if (phoneNumber != null && phoneNumber.length != 10) {
    print("Please enter a valid 10-digit phone number.");
    return;
  } 

  print("Enter your age:");
  var age = stdin.readLineSync();

  print("Enter your Height(in cm):");
  var height = stdin.readLineSync();

  print("Enter your weight(in kg):"); 
  var weight = stdin.readLineSync();

  print("Enter your address:"); 
  var address = stdin.readLineSync();

  print("Enter your hobbies (comma separated):");
  var hobbies = stdin.readLineSync();

  print("\nUser Information:");
  print("Name: $name"); 
  print("Phone Number: $phoneNumber");
  print("Age: $age");
  print("Height: $height cm");
  print("Weight: $weight kg");
  print("Address: $address");
  print("Hobbies: $hobbies");
  
  
  }