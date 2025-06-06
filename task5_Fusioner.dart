void processList(List<int> nums , int Function(int) operation) {
  
   nums=nums.map(operation).toList();
  // Print the processed list
  print("Processed List: $nums"); 

}

void main() {
// Example list of numbers
  List<int> numbers = [1, 2, 3, 4, 5];
  
  // Example operation: square each number
  int Function(int) squareOperation = (int num) => num * num;
   int Function(int) doubleOperation = (int num) => num * 2;
  
  processList(numbers, squareOperation);
  processList(numbers, doubleOperation);
}