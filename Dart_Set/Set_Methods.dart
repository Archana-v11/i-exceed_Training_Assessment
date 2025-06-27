void main() {
  // add(value)
  print("\nADD");
  var numbers = <int>{1, 2, 3};
  numbers.add(4);
  print('After adding a number: $numbers');

  // addAll(elements)
  numbers.addAll([5, 6, 2,7]);
  print('After adding all the numbers using addAll: $numbers');

  // remove(value)
  print("\nREMOVE");
  numbers.remove(7);
  print('After removing a number 7 from the Set: $numbers');
  
  // clear()
  print("\nCLEAR");
  var tempSet = {numbers}; // Clone for demonstration
  tempSet.clear();
  print('After giving clear() method for the Temporary Set: $tempSet'); 
  
  // contains(value)
  print("\nCONTAINS");
  print('Contains a value in a SET or Not? ${numbers.contains(3)}'); 

  // length
  print("\nLENGTH");
  print('Length of the Set: ${numbers.length}'); 

  // isEmpty / isNotEmpty
  print("\nEMPTY / NOTEMPTY");
  print('Is Empty? ${numbers.isEmpty}'); 
  print('Is Not Empty? ${numbers.isNotEmpty}'); 

  // toList()
  print("\nLIST");
  var list = numbers.toList();
  print('Converting Set to List: $list');
  
  // firstOrNull
  print("\nFIRST OR NULL");
  var fruits = {'apple', 'banana', 'orange'};
  print('First or Null of the Set fruits: ${fruits.firstOrNull}'); 
  var emptySet = <String>{};
  print('First or Null of the Empty Set: ${emptySet.firstOrNull}'); 

  // lastOrNull
  print("\nLAST OR NULL");
  print('Last or Null of the Set fruits: ${fruits.lastOrNull}'); 
  print('Last or Null of the Empty Set: ${emptySet.lastOrNull}'); 

  // first
  print("\nFIRST");
  print('First Element: ${fruits.first}'); 

  // last
  print("\nLAST");
  print('Last Element: ${fruits.last}'); 

  // iterator
  print("\n");
  print('Iterating using iterator:');
  Iterator it = fruits.iterator;
  while (it.moveNext()) {
    print(it.current); 
  }
  
  // hashCode
  print("\nHASH CODE");
  print('HashCode of fruits: ${fruits.hashCode}');  

  // runtimeType
  print("\nRUNTIME TYPE");
  print('Runtime Type of fruits: ${fruits.runtimeType}'); 

  // indexed
  print("\n");
  print('Using indexed:');
  for (var entry in fruits.indexed) {
    print('${entry.$1}: ${entry.$2}');
  }  

  // nonNulls
  print("\nNON NULLS");
  Set<String?> fruitsWithNulls = {'apple', null, 'banana'};
  print('Non-nulls: ${fruitsWithNulls.nonNulls}');

  // lookup(object)
  print("\nLOOK UP");
  print('Lookup 3: ${numbers.lookup(3)}'); 
  print('Lookup 10: ${numbers.lookup(10)}'); 

  // retainWhere()
  print("\nRETAINS WHERE");
  numbers.retainWhere((n) => n.isEven);
  print('After retainWhere(isEven): $numbers'); 
}
