import java.util.*;
class sample
{
	sample()
	{
		ArrayList<String> l=new ArrayList<>();
		l.add("Java");
		l.add("Spring Boot");
		l.add("HTML");
		l.add("CSS");
		/*Iterator<String> itr=l.iterator();
		while(itr.hasNext())
		{
			System.out.println(itr.next());
		}*/
		
		// (or) another method to print arraylist
		
		for(String a:l)
		{
			System.out.println(a);
		}
	}
}
class arraylist
{
	public static void main(String args[])
	{
		sample s=new sample();
	}
}