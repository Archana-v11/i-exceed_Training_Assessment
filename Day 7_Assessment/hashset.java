import java.util.*;
class hashset
{
	public static void main(String args[])
	{
		HashSet<String>s = new HashSet<String>();
		
		// 1. Adding elements
		s.add("Java");
		s.add("C++");
		s.add("AWS");
		s.add("Spring Boot");
		s.add("HTML");
		s.add("CSS");
		s.add("Eclipse");
		System.out.println("Initial Set: "+s);
		
		// 2. Size
		System.out.println("Size: "+s.size());
		
		// 3. contains
		System.out.println("Does HashSet contains the 'CSS'? "+s.contains("CSS"));
		
		// 4. remove() - Removes the specified element 
        	s.remove("Eclipse");
        	System.out.println("After removing: " + s);
        	
        	// 5. isEmpty() - Checks if the set is empty
        	System.out.println("Is HashSet empty? " + s.isEmpty());
        	
        	// 6. clone() - Creates a shallow copy of the set
        
        	HashSet<String> clonedset = (HashSet<String>) s.clone();
       	 System.out.println("Cloned HashSet: " + clonedset);
       	 
       	// 7. iterator() - Returns an iterator 
        	System.out.print("Using Iterator: ");
        	for (String set: s) 
        	{
            		System.out.print(set + " ");
        	}
        	System.out.println();
        	
        	// 8. Using enhanced for loop to iterate
       	System.out.print("Using enhanced for loop : ");
        	for (String set : s)
        	{
           		 System.out.print(set + " ");
                }
               System.out.println();
               
               // 9. clear() - Removes all elements from the set
        	s.clear();
        	System.out.println("HashSet after clear(): "+s);
			
	}
}

/*
OUTPUT:

Initial Set: [Java, C++, CSS, Eclipse, Spring Boot, HTML, AWS]
Size: 7
Does HashSet contains the 'CSS'? true
After removing: [Java, C++, CSS, Spring Boot, HTML, AWS]
Is HashSet empty? false
Cloned HashSet: [Java, C++, CSS, Spring Boot, HTML, AWS]
Using Iterator: Java C++ CSS Spring Boot HTML AWS 
Using enhanced for loop : Java C++ CSS Spring Boot HTML AWS 
HashSet after clear(): []
*/
