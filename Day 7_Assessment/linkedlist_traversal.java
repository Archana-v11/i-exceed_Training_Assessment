/*methods of Traversing : 

1. Iterator - traversing collections in a forward direction ie) from the begining to end

2. Spliterator - used to iterate elements one-by-one from a List

3. ListIterator - traversing collections in both forward and backward direction
                Forward -> hasNext()
                Backward -> hasPrevious()
              
4. For Each
*/
import java.util.*;
class linkedlist_traversal
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
		l.add("Eclipse");
		
		// 2. Traversing using Iterator
		
		System.out.println("Elements traversed by Iterator: ");
        	Iterator<String> itr = l.iterator();
        	while (itr.hasNext()) 
        	{
            		System.out.print(itr.next() + " ");
        	}
        	System.out.println();
        	
        	// 3. Traversing using Spliterator
        	
        	System.out.println("Elements traversed by Spliterator:");
        	Spliterator sp=l.spliterator();
        	sp.forEachRemaining(ele->System.out.print(ele+" "));
        	System.out.println();
        	
        	// 4. Traversing using ListIterator - Forward Directions
        	
        	System.out.println("Elements traversed by ListIterator in Forward Directions:");
        	ListIterator<String> li=l.listIterator();
        	while(li.hasNext())
        	{
        		System.out.print(li.next()+" ");
        	}
        	System.out.println();
        	
        	// 5. Traversing using ListIterator - Backward Directions
        	
        	System.out.println("Elements traversed by ListIterator in Backward Directions:");        	
        	while(li.hasPrevious())
        	{
        		System.out.print(li.previous()+" ");
        	}
        	System.out.println();
        	
        	// 6. Traversing using For Each
        	System.out.println("Elements traversed by for-each:");
        	l.forEach(ele->System.out.print(ele+" "));
        	System.out.println();
        	
        	// 7. Traversing using for loop
        	System.out.println("Elements traversed by for loop:");
        	for(String s:l)
        	{
        		System.out.print(s+" ");
        	}
	}
}

/*
OUTPUT:

Elements traversed by Iterator: 
Java C++ AWS Spring Boot HTML CSS Eclipse 
Elements traversed by Spliterator:
Java C++ AWS Spring Boot HTML CSS Eclipse 
Elements traversed by ListIterator in Forward Directions:
Java C++ AWS Spring Boot HTML CSS Eclipse 
Elements traversed by ListIterator in Backward Directions:
Eclipse CSS HTML Spring Boot AWS C++ Java 
Elements traversed by for-each:
Java C++ AWS Spring Boot HTML CSS Eclipse 
Elements traversed by for loop:
Java C++ AWS Spring Boot HTML CSS Eclipse
*/
