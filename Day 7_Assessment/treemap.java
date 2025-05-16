import java.util.*;
class treemap
{
	public static void main(String args[])
	{
		TreeMap<Integer,String>map=new TreeMap<>();
		
		// 1. Adding elements using put(key,value)
		map.put(1, "Java");
        	map.put(2, "Python");
        	map.put(3, "C++");
        	map.put(4, "JavaScript");
        	map.put(5, "HTML");
        	map.put(6, "CSS");
        	map.put(7, "React");
        	
        	System.out.println("Initial TreeMap: "+map);
        	
        	// 2. get(key) - Retrieves value for a given key
        	System.out.println("Value at key 2: " + map.get(2));

        	// 4. containsKey(key) - Checks if key exists
        	System.out.println("Contains key 5? " + map.containsKey(5));

        	// 5. containsValue(value) - Checks if value exists
        	System.out.println("Contains value 'C++'? " + map.containsValue("C++"));
        	
        	// 6. remove(key) - Removes entry for the specified key
        	map.remove(7);
        	System.out.println("After removing key 7: " + map);

        	// 7. size() - Returns number of key-value pairs
        	System.out.println("Size: " + map.size());

        	// 8. isEmpty() - Checks if the map is empty
        	System.out.println("Is TreeMap empty? " + map.isEmpty());
        	
        	// 9. firstKey() - Gets the lowest key
        	System.out.println("First key: "+map.firstKey());

        	// 10. lastKey() - Gets the highest key
        	System.out.println("Last key: " + map.lastKey());
        	
        	// 11. higherKey(key) - Next higher key
        	System.out.println("Key higher than 2: " + map.higherKey(2));

        	// 12. lowerKey(key) - Next lower key
        	System.out.println("Key lower than 3: " + map.lowerKey(3));
        	
        	// 13. ceilingKey(key) - Smallest key ≥ given key
        	System.out.println("Ceiling key of 3: " + map.ceilingKey(3));

        	// 14. floorKey(key) - Largest key ≤ given key
        	System.out.println("Floor key of 4: " + map.floorKey(4));
        	
        	// 15. keySet() - Returns all keys
        	System.out.println("Key Set: " + map.keySet());

        	// 16. values() - Returns all values
        	System.out.println("Values: " + map.values());

        	// 17. entrySet() - Returns all key-value pairs
        	System.out.println("Entry Set: " + map.entrySet());
        	
        	// 18. replace(key, newValue) - Replaces value for a specific key
        	map.replace(3, "C");
        	System.out.println("After replacing value at key 3: " + map);

        	// 19. putIfAbsent(key, value) - Adds only if key is not already present
        	map.putIfAbsent(7, "Eclipse");
        	map.putIfAbsent(1, "Spring Boot"); // Won't replace
        	System.out.println("After putIfAbsent: " + map);
        	
        	// 20. forEach() - Iterates using lambda
        	System.out.println("Iterating using forEach:");
        	map.forEach((key, value) -> System.out.println("Key: " + key + ", Value: " + value));

        	// 21. clear() - Removes all entries
        	map.clear();
        	System.out.println("TreeMap after clear(): "+ map);     	
	}
}


/*
OUTPUT:

Initial TreeMap: {1=Java, 2=Python, 3=C++, 4=JavaScript, 5=HTML, 6=CSS, 7=React}
Value at key 2: Python
Contains key 5? true
Contains value 'C++'? true
After removing key 7: {1=Java, 2=Python, 3=C++, 4=JavaScript, 5=HTML, 6=CSS}
Size: 6
Is TreeMap empty? false
First key: 1
Last key: 6
Key higher than 2: 3
Key lower than 3: 2
Ceiling key of 3: 3
Floor key of 4: 4
Key Set: [1, 2, 3, 4, 5, 6]
Values: [Java, Python, C++, JavaScript, HTML, CSS]
Entry Set: [1=Java, 2=Python, 3=C++, 4=JavaScript, 5=HTML, 6=CSS]
After replacing value at key 3: {1=Java, 2=Python, 3=C, 4=JavaScript, 5=HTML, 6=CSS}
After putIfAbsent: {1=Java, 2=Python, 3=C, 4=JavaScript, 5=HTML, 6=CSS, 7=Eclipse}
Iterating using forEach:
Key: 1, Value: Java
Key: 2, Value: Python
Key: 3, Value: C
Key: 4, Value: JavaScript
Key: 5, Value: HTML
Key: 6, Value: CSS
Key: 7, Value: Eclipse
TreeMap after clear(): {}

*/
