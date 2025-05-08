class Company
{
	String companyName, location, regCode;

	Company(String companyName, String location, String regCode)
	{
		this.companyName = companyName;
		this.location = location;
		this.regCode = regCode;
	}

	public void displayDetails(Employee e)
	{
		System.out.println("Company Name: " + companyName);
		System.out.println("Location: " + location);
		System.out.println("Registration Code: " + regCode);
		System.out.println("Employee Name: " + e.empName);
		System.out.println("Employee ID: " + e.empId);
		System.out.println("Salary: " + e.salary);
	}
}

class Employee
{
	String empName;
	int empId, salary;

	Employee(String empName, int empId, int salary)
	{
		this.empName = empName;
		this.empId = empId;
		this.salary = salary;
	}
}

class Aggregation
{
	public static void main(String args[])
	{
		Company comp = new Company("TechSol", "Chennai", "TS789456");
		Employee e1 = new Employee("Karthik", 1023, 75000);
		Employee e2 = new Employee("Deepika", 1045, 85000);

		comp.displayDetails(e1);
		comp.displayDetails(e2);
	}
}
