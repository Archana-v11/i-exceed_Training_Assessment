@FunctionalInterface
interface demo
{
	public void display();
}
class functionalinterface implements demo
{
	public static void main(String args[])
	{
		functionalinterface obj=new functionalinterface();
		obj.display();
	}
	@Override
	public void display()
	{
		System.out.println("Functional Interface");
	}
}
