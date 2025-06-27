void main() {
  // Declare a set of animals
  var animals = {'Dog', 'Cat', 'Lion', 'Tiger', 'Deer'};

  print('Iteration using for-in loop:');
  for (var a in animals) {
    print(a);
  }

  print('\n Iteration using forEach():');
  animals.forEach((a) {
    print(a);
  });

  print('\n Iteration using traditional for loop with elementAt():');
  for (int i = 0; i < animals.length; i++) {
    print(animals.elementAt(i));
  }
}
