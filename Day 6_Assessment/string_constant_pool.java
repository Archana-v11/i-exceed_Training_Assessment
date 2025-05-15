import java.util.*;
class string_constant_pool
{
	public static void main(String args[])
	{
		// declaring string literal
		String a="Welcome";
		String b="Welcome";
		
		//declaring string object
		String c=new String("Welcome");
		String d=new String("Welcome");
		
		// checking literals and object equal or not using "==" method
		// "==" method compares the reference of both object
		System.out.println("String Literal: "+(a==b)); //Output: true
		System.out.println("String Object: "+(c==d));  //Output: false
		
		// checking literals and object equal or not using "equals()" method
		// "equals()" method compares the exact value
		System.out.println("String Literal: "+(a.equals(b))); //Output: true
		System.out.println("String Object: "+(c.equals(d)));  //Output: true
	}
}