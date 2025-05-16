import java.util.*;
class treeset
{
	public static void main(String args[])
	{
		TreeSet<Integer>s=new TreeSet<>();
		
		// 1. Adding elements
		s.add(10);
		s.add(20);
		s.add(30);
		s.add(40);
		s.add(50);
		s.add(60);
		s.add(70);
		System.out.println("Initial TreeSet: "+s);
		
		// 2. size()
		System.out.println("Size: "+s.size());
		
		// 3. contains(element) - Checks if an element exists
        	System.out.println("Does TreeSet contain '20'? " + s.contains(20));

        	// 4. remove(element) - Removes a specific element
        	s.remove(70);
        	System.out.println("After removing: " +s);

        	// 5. isEmpty() - Checks if the set is empty
        	System.out.println("Is TreeSet empty? " + s.isEmpty());
        	
        	// 6. first() - Returns the first (lowest) element
        	System.out.println("First element: "+s.first());

        	// 7. last() - Returns the last (highest) element
        	System.out.println("Last element: " + s.last());
        	
        	// 8. higher(element) - Returns the least element strictly greater than given element
        	System.out.println("Element higher than '40': " + s.higher(40));
        	
        	// 9. lower(element) - Returns the greatest element strictly less than given element
        	System.out.println("Element lower than '40': " + s.lower(40));
        	
        	// 10. ceiling(element) - Returns the least element >= given element
        	System.out.println("Ceiling of '24': " + s.ceiling(24));

        	// 11. floor(element) - Returns the greatest element <= given element
        	System.out.println("Floor of '24': " + s.floor(24));
        	
        	// 12. descendingSet() - Returns the set in reverse order
        	System.out.println("Descending order: " + s.descendingSet());

        	// 14. clear() - Removes all elements
        	s.clear();
        	System.out.println("TreeSet after clear(): " + s);  	
  	
	}
}


/*
OUTPUT:

Initial TreeSet: [10, 20, 30, 40, 50, 60, 70]
Size: 7
Does TreeSet contain '20'? true
After removing: [10, 20, 30, 40, 50, 60]
Is TreeSet empty? false
First element: 10
Last element: 60
Element higher than '40': 50
Element lower than '40': 30
Ceiling of '24': 30
Floor of '24': 20
Descending order: [60, 50, 40, 30, 20, 10]
TreeSet after clear(): []

*/
