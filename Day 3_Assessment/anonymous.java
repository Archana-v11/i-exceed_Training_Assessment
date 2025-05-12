class student
{
	public void show(){}
}
class anonymous
{
	public static void main(String args[])
	{
		new student()
		{
			public void show()
			{
			System.out.println("Welcome");
			}
		}.show();
	}
}