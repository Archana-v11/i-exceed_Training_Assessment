void main() {
  var numbers = [1, 2, 2, 3, 3, 3];
  
  // Remove duplicates by converting to set
  var unique = numbers.toSet();            // {1, 2, 3}
  print('Unique: $unique');

  // Convert back to list
  var backToList = unique.toList();        // [1, 2, 3]
  print('Back to List: $backToList');
}



