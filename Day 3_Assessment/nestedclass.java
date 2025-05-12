class outerclass
{
	private String name="Archana";
	int age;
	class innerclass //non static inner class
	{
		String loc;
		String degree;
		public void display(int age,String loc,String degree)
		{
			System.out.println("Name: "+name);
			System.out.println("Age: "+age);
			System.out.println("Location: "+loc);
			System.out.println("Degree: "+degree);
		}
	}
}
class nestedclass
{
	public static void main(String args[])
	{
		outerclass obj=new outerclass();
		outerclass.innerclass in=obj.new innerclass();
		in.display(21,"CBE","B.Tech IT");
	}
}