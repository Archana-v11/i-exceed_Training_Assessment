void main() 
{
  // Inferred type Set
  print("Inferred Type Set:");
  var fruits = {'apple', 'banana', 'orange'};
  print('Fruits (inferred): $fruits');

  var num = {10, 20, 30, 40, 50};
  print('Numbers (inferred): $num');

  // Explicit type Set
  print("\nExplicit type Set:");
  Set<String> fruitsExplicit = {'apple', 'banana', 'orange'};
  print('FruitsExplicit: $fruitsExplicit');

  // Empty Set declarations
  print("\nEmpty Set Declaration:");
  var emptySet1 = <int>{}; // Correct way to declare empty Set of integers
  print('EmptySet1: $emptySet1');

  Set<int> emptySet2 = {}; // Also valid
  print('emptySet2: $emptySet2');

  // This is a Map, not a Set
  print("\nThis declaration is Map Not a Set:");
  var notASet = {}; // inferred as Map<String, dynamic>
  print('notASet (actually a Map): $notASet');

  // Creating Sets from another Set
  print("\nCreating Sets from another Set:");
  var set1 = {10, 20, 30};
  print('set1: $set1');

  var set2 = Set.from(set1); // Using Set.from()
  print('set2 (from set1): $set2');

  var set3 = Set.of(set1); // Using Set.of()
  print('set3 (of set1): $set3');
}
