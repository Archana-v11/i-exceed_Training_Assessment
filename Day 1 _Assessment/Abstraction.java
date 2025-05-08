abstract class sample
{
	abstract void add(int x,int y,int z);
}
class A extends sample
{
     @Override
     void add(int x,int y,int z)
	 {
	   System.out.print(x+y+z);
	 }
}

class abstraction
{
	
	public static void main(String args[])
	{
		
	 A a=new A();
	 a.add(10,20,30);
		
	}
}