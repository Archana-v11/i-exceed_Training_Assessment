import java.util.*;
class arraylistmethods
{
	public static void main(String args[])
	{
		// creation of arraylist
		ArrayList<String> l=new ArrayList<>();
		
		// Methods:
		
		// 1. adding elements into arraylist
		l.add("Java");
		l.add("C++");
		l.add("AWS");
		l.add("Spring Boot");
		l.add("HTML");
		l.add("CSS");
		l.add("HTML");
		System.out.println("Original List: "+l);
		
		// 2. adding elements at a specific index
		l.add(2,"Testing");
		System.out.println("After adding-new list: "+l);
		
		// 3. updating elements 
		l.set(1,"C");
		System.out.println("After updating-new list: "+l);
		
		// 4. removing element using index
		l.remove(1);
		System.out.println("After removing at a specific index-new list: "+l);
		
		// 5. removing element using value
		l.remove("Testing");
		System.out.println("After removing a specific element-new list: "+l);
		
		// 6. returning the size of the list
		int size=l.size();
		System.out.println("Size of the list: "+size);
		
		// 7. check if the list contains the specific value
		boolean contain=l.contains("C++");
		System.out.println("Whether the list contains the element? "+contain);
		
		// 8. check the index of the 1 st occurence of the element
		int indexof=l.indexOf("HTML");
		System.out.println("Index of the element is: "+indexof);
		
		// 9. checks if the list is empty
		boolean empty=l.isEmpty();
		System.out.println("Is ArrayList empty? "+empty);
		
		// 10. convert the list to an array
		String[] array = l.toArray(new String[0]);
        System.out.print("ArrayList as Array: ");
        for(String a: array) {
            System.out.print(a+ " ");
        }
        System.out.println();
		
		// 11. sort the elements in the list
		Collections.sort(l);
		System.out.println("After sorting-new list: "+l);
		
		//12. removing all elements from the list
		l.clear();
		System.out.println("After clearing list: "+l);
	}
}



/*
OUTPUTS:
Original List: [Java, C++, AWS, Spring Boot, HTML, CSS, HTML]
After adding-new list: [Java, C++, Testing, AWS, Spring Boot, HTML, CSS, HTML]
After updating-new list: [Java, C, Testing, AWS, Spring Boot, HTML, CSS, HTML]
After removing at a specific index-new list: [Java, Testing, AWS, Spring Boot, HTML, CSS, HTML]
After removing a specific element-new list: [Java, AWS, Spring Boot, HTML, CSS, HTML]
Size of the list: 6
Whether the list contains the element? false
Index of the element is: 3
Is ArrayList empty? false
ArrayList as Array: Java AWS Spring Boot HTML CSS HTML 
After sorting-new list: [AWS, CSS, HTML, HTML, Java, Spring Boot]
After clearing list: []
*/