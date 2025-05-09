 
interface one
{
	public void show();
	public void display();
}
 
interface two extends one
{
	public void show1();
	public void display1();
}
 
class interface1 implements two
{
	public void show()
	{
		System.out.println("1 st interface show is called");
	}
    public void display()
	{
		System.out.println("1 st interface display is called");
	}
    public void show1()
	{
		System.out.println("2 nd interface show is called");
	}
    public void display1()
	{
		System.out.println("2 nd interface display is called");
	}
	public static void main(String args[])
	{
		interface1 obj=new interface1();
		obj.show();
		obj.display();
		obj.show1()
		obj.display1();
	}
} 
