import 'dart:collection';
void main() 
{
  // LinkedHashSet: maintains insertion order
  var linkedSet = LinkedHashSet<int>();
  linkedSet.addAll([3, 1, 2]);
  print('LinkedHashSet: $linkedSet');  // {3, 1, 2}

  // SplayTreeSet: keeps elements sorted
  var treeSet = SplayTreeSet<int>();
  treeSet.addAll([3, 1, 2]);
  print('SplayTreeSet: $treeSet');     // {1, 2, 3}
}
