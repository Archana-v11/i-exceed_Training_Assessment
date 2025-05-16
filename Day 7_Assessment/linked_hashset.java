import java.util.*;
class linked_hashset
{
	public static void main(String args[])
	{
		LinkedHashSet<String> animals = new LinkedHashSet<>();
		
		// 1. Adding elements
		animals.add("Lion");
        	animals.add("Tiger");
        	animals.add("Elephant");
        	animals.add("Deer");
        	animals.add("Monkey");
        	animals.add("Zebra");
        	animals.add("Giraffe");
        	System.out.println("Initial LinkedHashSet: " + animals);

        	// 2. size() - Returns the number of elements
        	System.out.println("Size: " + animals.size());

        	// 3. contains() - Checks if a specific element is present
        	System.out.println("Does LinkedHashSet contain 'Zebra'? " + animals.contains("Zebra"));

        	// 4. remove() - Removes a specific element
       	animals.remove("Deer");
        	System.out.println("After removing 'Deer': " + animals);

        	// 5. isEmpty() - Checks if the set is empty
        	System.out.println("Is LinkedHashSet empty? " + animals.isEmpty());

        	// 6. clone() - Creates a shallow copy of the set
        	LinkedHashSet<String> clonedAnimals = (LinkedHashSet<String>) animals.clone();
        	System.out.println("Cloned LinkedHashSet: " + clonedAnimals);

        	// 7. iterator() - Iterating using enhanced for loop
        	System.out.print("Using Iterator (enhanced for loop): ");
        	for (String animal : animals) 
        	{
            		System.out.print(animal + " ");
        	}
        	System.out.println();

        	// 8. Using for-each loop (same as above, shown again for clarity)
        	System.out.print("Using for-each loop again: ");
        	for (String animal : animals) 
        	{
            		System.out.print(animal + " ");
        	}
        	System.out.println();

        	// 9. clear() - Removes all elements from the set
        	animals.clear();
        	System.out.println("LinkedHashSet after clear(): " + animals);
	}
}

/*
OUTPUT:

Initial LinkedHashSet: [Lion, Tiger, Elephant, Deer, Monkey, Zebra, Giraffe]
Size: 7
Does LinkedHashSet contain 'Zebra'? true
After removing 'Deer': [Lion, Tiger, Elephant, Monkey, Zebra, Giraffe]
Is LinkedHashSet empty? false
Cloned LinkedHashSet: [Lion, Tiger, Elephant, Monkey, Zebra, Giraffe]
Using Iterator (enhanced for loop): Lion Tiger Elephant Monkey Zebra Giraffe 
Using for-each loop again: Lion Tiger Elephant Monkey Zebra Giraffe 
LinkedHashSet after clear(): []

*/
