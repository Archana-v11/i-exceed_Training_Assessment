import assessment_package.employee;
class company extends employee
{
	String name,loc,desig;
	int age,salary;
	company(String name,int age,String loc,String desig,int salary)
	{
		super(name,age,loc);
		this.desig=desig;
		this.salary=salary;
	}
	public void displayDetails()
	{
		System.out.println("Designation: "+desig);
		System.out.println("Salary: "+salary);
	}
}
class packagedemo
{
	public static void main(String args[])
	{
		company obj=new company("Archana",21,"CBE","Developer",300000);
		obj.displayemployee();
		obj.displayDetails();
	}
}