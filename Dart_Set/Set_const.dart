void main() {
  // Creating an immutable (constant) set
  var fruits = const {'mango', 'orange', 'apple'};

  // Printing the set
  print('Immutable Set: $fruits');

  // The following operations are not allowed on a const Set:
  // fruits.add("papaya");    // ❌ Error: Cannot modify an unmodifiable set
  // fruits.remove("mango");  // ❌ Error: Cannot modify an unmodifiable set

  // You can still read values
  print('Contains mango? ${fruits.contains("mango")}'); // true
  print('Length: ${fruits.length}');                    // 3
  print('First fruit: ${fruits.first}');                // mango
}
