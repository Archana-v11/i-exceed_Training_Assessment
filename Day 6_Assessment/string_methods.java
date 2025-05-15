class string_methods
{
	public static void main(String args[])
	{
		String str="Hello World Hello";
		String str2="Hi World";
		
		// 1. Length
		System.out.println("String 1 Length: "+str.length());
		System.out.println("String 2 Length: "+str2.length());
		
		// 2. charAt() - returns the character at specified index
		System.out.println("Character at specified index: "+str.charAt(3));
		
		// 3. uppercase() - converts string to uppercase
		System.out.println("Uppercase: "+str.toUpperCase());
		
		// 4. lowercase() - converts string to lowercase
		System.out.println("Lowercase: "+str.toLowerCase());
		
		// 5. indexOf() - returns the index of 1 st occurences of the string
		System.out.println("Index of the String: "+str.indexOf("Hello"));
		
		// 6. startsWith() - checks if the string starts with the specified prefix
		System.out.println("Starts with or not: "+str.startsWith("Hello"));
		
		// 7. endsWith() - checks if the string ends with the specified suffix
		System.out.println("Ends with or not: "+str.endsWith("Hello"));
		
		// 8. replace() - replaces all occurences of 1st char with 2nd char
		System.out.println("Replaced String: "+str.replace("l","*"));
		
		// 9. contains()-Checks if the string contains the specified sequence of characters
		System.out.println("Contains character or not: "+str.contains("Wor"));
		
		// 10. equals() - compare the string to another string
		System.out.println("Equals or Not: "+str.equals("Hello World Hello"));
		
		// 11. equalsIgnoreCase() - Compares the string to another string, ignoring case
		System.out.println("Equals Ignore Case or Not: "+str.equalsIgnoreCase("hello world hello"));
		
		// 12. substring(int,int) - Returns a new string that is a substring of this string
		System.out.println("Substring word: "+str.substring(4,9));
		
		// 13. trim() - removes the leading and trailing spaces
		String str3="  Hello  ";
		System.out.println("Trimmed Result: "+str3.trim());
		
		// 14. split() - splits the string around the given delimiter
		String[] words = str.trim().split(" ");
        System.out.println("Split words:");
        for (String word : words) {
            System.out.println(word);
        }
		
		// 15. isEmpty() - Checks if the string is empty (length == 0)
        String emptyStr = "";
        System.out.println("Is empty: " + emptyStr.isEmpty());

        // 16. isBlank() - Checks if the string is empty or contains only white space
        String blankStr = "   ";
        System.out.println("Is blank: " + blankStr.isBlank());

        // 17. join() - Joins multiple strings with a delimiter
        String joined = String.join(" - ", "Apple", "Banana", "Cherry");
        System.out.println("Joined string: " + joined);
	}	
}


/*
OUTPUT:
String 1 Length: 17
String 2 Length: 8
Character at specified index: l
Uppercase: HELLO WORLD HELLO
Lowercase: hello world hello
Index of the String: 0
Starts with or not: true
Ends with or not: true
Replaced String: He**o Wor*d He**o
Contains character or not: true
Equals or Not: true
Equals Ignore Case or Not: true
Substring word: o Wor
Trimmed Result: Hello
Split words:
Hello
World
Hello
Is empty: true
Is blank: true
Joined string: Apple - Banana - Cherry
*/