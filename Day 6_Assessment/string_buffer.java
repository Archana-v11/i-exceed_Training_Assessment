class string_buffer
{
	public static void main(String args[])
	{
		StringBuffer sb=new StringBuffer("Welcome");
		
		System.out.println("Initial String: "+sb);
		
		// 1. append()-append the specified string to the buffer
		sb.append(" Bangalore");
		System.out.println("After append: "+sb);
		
		// 2. insert()-inserts a string at a specified position
		sb.insert(8,"to my ");
		System.out.println("After insert: "+sb);
		
		// 3. replace()-Replaces the characters from start to end-1 with the given string
	    sb.replace(11, 13, "my Beautiful");
        System.out.println("After replace: " + sb);
		
		// 4. delete() - Deletes characters from start to end-1
        sb.delete(11, 13);
        System.out.println("After delete: " + sb);
		
		 // 5. reverse() - Reverses the characters in the buffer
        sb.reverse();
        System.out.println("After reverse: " + sb);
		sb.reverse();
		System.out.println("Again the original string: "+sb);
		
		// 6. length() - returns the length of the buffer
		System.out.println("Length: "+sb.length());		
		
        // 7. capacity() - Returns the current capacity of the buffer
        System.out.println("Capacity: " + sb.capacity());
		
		// 8. setCharAt() - Sets the character at the specified index
        sb.setCharAt(10, 'o');
        System.out.println("After setCharAt: " + sb);
		
		// 9. charAt() - Returns the character at the specified index
        System.out.println("Character at specified index: " + sb.charAt(1));

		// 10. substring() - Returns a new String from start index to end index
        String sub = sb.substring(0, 7);
        System.out.println("Substring: " + sub);
		
		// 11. ensureCapacity() - Ensures the minimum capacity of the buffer
        sb.ensureCapacity(50);
        System.out.println("Capacity after ensureCapacity: " + sb.capacity());
	}
}


/*
OUTPUT:
Initial String: Welcome
After append: Welcome Bangalore
After insert: Welcome to my Bangalore
After replace: Welcome to my Beautiful Bangalore
After delete: Welcome to  Beautiful Bangalore
After reverse: erolagnaB lufituaeB  ot emocleW
Again the original string: Welcome to  Beautiful Bangalore
Length: 31
Capacity: 48
After setCharAt: Welcome too Beautiful Bangalore
Character at specified index: e
Substring: Welcome
Capacity after ensureCapacity: 98
*/