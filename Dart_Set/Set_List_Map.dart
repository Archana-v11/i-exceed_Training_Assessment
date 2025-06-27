void main() {
  // List Example
  var list = ['apple', 'apple', 'banana']; // Allows duplicates
  print('List: $list'); 

  // Set Example
  var set = {'apple', 'banana', 'apple'}; // Only unique elements
  print('Set: $set'); 

  // Map Example
  var map = {10:'apple',20:'banana',30:'orange',40:'apple'}; 
  // Key-value pairs => Key should be unique , value can be duplicate
  
  print('Map: $map'); 

  // Accessing values
  print("\nAccessing Values");
  print('List[0]: ${list[0]}');           // apple
  print('Set contains "banana": ${set.contains("banana")}'); // true
  print('Map value for "Key 10": ${map[10]}'); // apple
}
