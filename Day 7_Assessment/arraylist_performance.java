import java.util.*;
class arraylist_performance
{
	public static void main(String args[])
	{
		ArrayList<Integer>l=new ArrayList<>();
		
		// for loop execution time
		for(int i=0;i<10000000;i++)
		{
			l.add(i);
		}
		long starttime1=System.nanoTime();
		for(int i=0;i<l.size();i++)
		{
			int num=l.get(i);
		}
		long endtime1=System.nanoTime();
		long duration1=(endtime1-starttime1);
		System.out.println("For Loop Execution time: "+duration1+" nanoseconds");
		
		// Iterator execution time
		Iterator<Integer> itr=l.iterator();
		while(itr.hasNext())
		{
			int res=itr.next();
		}
		long starttime2=System.nanoTime();
		long endtime2=System.nanoTime();
		long duration2=(endtime2-starttime2);
		System.out.println("Iterator Execution time: "+duration1+" nanoseconds");
		
	}
}
