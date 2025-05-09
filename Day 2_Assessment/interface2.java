
interface employee
{
	String name="Archana";
	int e_no=11;
	public void display();
}
class demo implements employee
{
	
	@Override
	public void display()
	{
		System.out.println("Name: "+name);
		System.out.println("Employee No: "+e_no);
	}
}
class interface2 
{
	public static void main(String args[])
	{
		demo d=new demo();
		d.display();
	}
}