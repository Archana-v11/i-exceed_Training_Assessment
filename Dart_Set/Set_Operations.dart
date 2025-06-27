void main() {
  // 🔹 Define two sets
  var a = {1, 2};
  var b = {2, 3};

  // 🔹 Union: combines elements from both sets (no duplicates)
  var union = a.union(b);
  print('Union of a and b: $union'); // {1, 2, 3}

  // 🔹 Intersection: keeps only common elements
  var intersection = a.intersection(b);
  print('Intersection of a and b: $intersection'); // {2}

  // 🔹 Difference: elements in a but not in b
  var difference = a.difference(b);
  print('Difference of a and b (a - b): $difference'); // {1}
}
