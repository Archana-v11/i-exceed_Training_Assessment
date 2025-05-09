@FunctionalInterface
interface demo
{
	public void show();
}
interface demo1
{
	public void show1();
}
class lambda
{
	public static void main(String args[])
	{
		new demo()
		{
	    public void show()
	    {
			System.out.println("Functional Interface1");
	    }		
		}.show();
		
		new demo1()
		{
	    public void show1()
	    {
			System.out.println("Functional Interface2");
	    }		
		}.show1();
		
	}
	
}