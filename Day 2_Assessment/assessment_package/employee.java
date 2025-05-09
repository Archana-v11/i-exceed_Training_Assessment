package assessment_package;
public class employee
{
	String name,loc;
	int age;
	public employee(String name,int age,String loc)
	{
		this.name=name;
		this.age=age;
		this.loc=loc;
	}
	public void displayemployee()
	{
		System.out.println("Name of the employee: "+name);
		System.out.println("Age: "+age);
		System.out.println("Location: "+loc);
	}
}