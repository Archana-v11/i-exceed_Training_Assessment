import java.util.*;
class linked_hashmap
{
	public static void main(String args[])
	{
		LinkedHashMap<Integer,String>map=new LinkedHashMap<>();
		
		// 1. Adding elements using put(key,value)
		map.put(1, "Java");
        	map.put(2, "Python");
        	map.put(3, "C++");
        	map.put(4, "JavaScript");
        	map.put(5, "HTML");
        	map.put(6, "CSS");
        	map.put(7, "React");
        	
        	System.out.println("Initial HashMap: "+map);
        	
        	// 2. size()
        	System.out.println("Size: "+map.size());
        	
        	// 3. get(key) - Returns the value associated with the key
        	System.out.println("Value at specific key: "+map.get(3));
        	
        	// 4. containsKey(key) - Checks if key exists
        	System.out.println("Contains key or Not? "+ map.containsKey(3));
        	
        	// 5. containsValue(value) - Checks if value exists
        	System.out.println("Contains value or Not? " + map.containsValue("HTML"));
        	
        	// 6. remove(key) - removes the mapping for a key
        	map.remove(7);
        	System.out.println("After removing key: "+map);
        	
        	// 7. isEmpty() - Checks if map is empty
        	System.out.println("Is HashMap empty? " + map.isEmpty());

        	// 8. keySet() - Returns set of keys
        	System.out.println("Keys: " + map.keySet());
        	
        	// 9. values() - Returns collection of values
        	System.out.println("Values: " + map.values());
        	
        	// 10. entrySet() - Returns set of key-value pairs
        	System.out.println("Entries: " + map.entrySet());
        	
        	// 11. putIfAbsent(key, value) - Adds value only if key is not present
        	map.putIfAbsent(8, "Spring Boot");
        	map.putIfAbsent(1, "C#"); // Won't overwrite Java
        	System.out.println("After putIfAbsent: " + map);
        	
        	// 12. replace(key, value) - Replaces value for the specified key
        	map.replace(5, "Bootstrap");
        	System.out.println("After replacing value at key: " + map);
        	
        	// 13. forEach() - Iterates using lambda expression
        	System.out.println("Iterating using forEach:");
        	map.forEach((k, v) -> System.out.println("Key: " + k + ", Value: " + v));
        	
        	// 14. clear() - Removes all entries
        	map.clear();
        	System.out.println("HashMap after clear(): " + map);	
		
	}
}

/*
OUTPUT:

Initial HashMap: {1=Java, 2=Python, 3=C++, 4=JavaScript, 5=HTML, 6=CSS, 7=React}
Size: 7
Value at specific key: C++
Contains key or Not? true
Contains value or Not? true
After removing key: {1=Java, 2=Python, 3=C++, 4=JavaScript, 5=HTML, 6=CSS}
Is HashMap empty? false
Keys: [1, 2, 3, 4, 5, 6]
Values: [Java, Python, C++, JavaScript, HTML, CSS]
Entries: [1=Java, 2=Python, 3=C++, 4=JavaScript, 5=HTML, 6=CSS]
After putIfAbsent: {1=Java, 2=Python, 3=C++, 4=JavaScript, 5=HTML, 6=CSS, 8=Spring Boot}
After replacing value at key: {1=Java, 2=Python, 3=C++, 4=JavaScript, 5=Bootstrap, 6=CSS, 8=Spring Boot}
Iterating using forEach:
Key: 1, Value: Java
Key: 2, Value: Python
Key: 3, Value: C++
Key: 4, Value: JavaScript
Key: 5, Value: Bootstrap
Key: 6, Value: CSS
Key: 8, Value: Spring Boot
HashMap after clear(): {}

*/
