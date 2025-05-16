import java.util.*;
class linkedlist
{
	public static void main(String args[])
	{
		LinkedList<String>l=new LinkedList<>();
		
		// 1. Adding elemets in list
		l.add("Java");
		l.add("C++");
		l.add("AWS");
		l.add("Spring Boot");
		l.add("HTML");
		l.add("CSS");
		l.add("HTML");
		
		// 2. Printing the list
		System.out.println("Initial List: "+l);
		
		// 3. Printing using the iterator
		System.out.print("Iterating with Iterator: ");
        	Iterator<String> itr = l.iterator();
        	while (itr.hasNext()) 
        	{
            		System.out.print(itr.next() + " ");
        	}
        	System.out.println();
		
		// 3. Adding element at a specific index
		l.add(2,"C");
		System.out.println("After adding at a specific index List is: "+l);
		
		// 4. Updating element
		l.set(7,"Eclipse");
		System.out.println("After Updating: "+l);
		
		// 5. Extract Methods (Get/Peek/Element)        
        	System.out.println("Getting element using get(index) method: " + l.get(6));
        	System.out.println("Getting 1st element using getFirst() method: " + l.getFirst());
        	System.out.println("Getting last element using getLast() method: " + l.getLast());
        	System.out.println("Getting 1st element using peekFirst() method: " + l.peekFirst()); 
        	System.out.println("Getting last element using peekLast() method: " + l.peekLast());
        	System.out.println("Getting 1st element using element() method: " + l.element());     
        	
        	// 6. Remove Elements        
        	l.remove("Eclipse"); // Remove by value
        	l.remove(2);        // Remove by index
        	System.out.println("After remove operations: " + l);
        	
        	// 7. Checking Properties
        	System.out.println("Is LinkedList empty? " + l.isEmpty());
        	System.out.println("Index of 'AWS': " + l.indexOf("AWS"));
        	System.out.println("Size of LinkedList: " + l.size());
        	System.out.println("Does LinkedList contain 'CSS'? "+l.contains("CSS"));
        	
        	// 8. Remove First/Last Occurrence        
        	l.add("HTML");
        	System.out.println("Before occurrence removals: " + l);
        	l.removeFirstOccurrence("HTML"); // removes the first "HTML"
        	System.out.println("After removing FirstOccurence: "+l);
        	l.removeLastOccurrence("HTML");  // removes the last "HTML"
        	System.out.println("After removing LastOccurrence: " + l);
        	
        	// 9. Poll methods 
        	
        	System.out.println("poll() method: "+l.poll());
        	System.out.println("After poll() method list is: "+l);
        	System.out.println("pollFirst() method: " + l.pollFirst());
        	System.out.println("After pollFirst() method list is: "+l);
        	
        	// 10. removeIf (predicate based removing)
        	l.add("Java");
		l.add("C++");
		l.add("HTML");
		      // removeIf using equals method
		System.out.println("Using equals Before removeIf list is: "+l);
		l.removeIf(x->x.equals("CSS"));
		System.out.println("Using equals After removeIf list is: "+l);
		      // removeIf using startsWith method		
		l.add("Angular");
		System.out.println("Using startsWith Before removeIf list is: "+l);
		l.removeIf(x->x.startsWith("A"));
		System.out.println("Using startsWith sAfter removeIf list is: "+l);
		
		// 11. removeAll() - removes all the element from the list
		
        	LinkedList<String> toRemoveList = new LinkedList<>();
        	toRemoveList.add("Kiwi");
        	toRemoveList.add("Date");
        	System.out.println("Before removeAll: " + toRemoveList);
        	toRemoveList.removeAll(toRemoveList);
        	System.out.println("After removeAll: " + toRemoveList);     
        	
        	// 12. stack operations : push() and pop()
        	l.push("React");
        	System.out.println("After pushing list is: "+l);
        	l.pop();
        	System.out.println("After pop list is: "+l);  	
     	
	}
}



/*
OUTPUT

Initial List: [Java, C++, AWS, Spring Boot, HTML, CSS, HTML]
Iterating with Iterator: Java C++ AWS Spring Boot HTML CSS HTML 
After adding at a specific index List is: [Java, C++, C, AWS, Spring Boot, HTML, CSS, HTML]
After Updating: [Java, C++, C, AWS, Spring Boot, HTML, CSS, Eclipse]
Getting element using get(index) method: CSS
Getting 1st element using getFirst() method: Java
Getting last element using getLast() method: Eclipse
Getting 1st element using peekFirst() method: Java
Getting last element using peekLast() method: Eclipse
Getting 1st element using element() method: Java
After remove operations: [Java, C++, AWS, Spring Boot, HTML, CSS]
Is LinkedList empty? false
Index of 'AWS': 2
Size of LinkedList: 6
Does LinkedList contain 'CSS'? true
Before occurrence removals: [Java, C++, AWS, Spring Boot, HTML, CSS, HTML]
After removing FirstOccurence: [Java, C++, AWS, Spring Boot, CSS, HTML]
After removing LastOccurrence: [Java, C++, AWS, Spring Boot, CSS]
poll() method: Java
After poll() method list is: [C++, AWS, Spring Boot, CSS]
pollFirst() method: C++
After pollFirst() method list is: [AWS, Spring Boot, CSS]
Using equals Before removeIf list is: [AWS, Spring Boot, CSS, Java, C++, HTML]
Using equals After removeIf list is: [AWS, Spring Boot, Java, C++, HTML]
Using startsWith Before removeIf list is: [AWS, Spring Boot, Java, C++, HTML, Angular]
Using startsWith sAfter removeIf list is: [Spring Boot, Java, C++, HTML]
Before removeAll: [Kiwi, Date]
After removeAll: []
After pushing list is: [React, Spring Boot, Java, C++, HTML]
After pop list is: [Spring Boot, Java, C++, HTML]

*/
