class outerclass
{
	static String name="Archana";
	static int age=21;
	static class innerclass
	{
		String loc="CBE";
		void display()
		{
			System.out.println("Name: "+name);
			System.out.println("Age: "+age);
			System.out.println("Location: "+loc);
		}
	}
}
class staticnested
{
	public static void main(String args[])
	{
		outerclass.innerclass obj=new outerclass.innerclass();
		obj.display();
	}
}