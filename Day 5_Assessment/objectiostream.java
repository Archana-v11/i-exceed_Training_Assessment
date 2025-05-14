import java.io.*;
class employee implements Serializable
{
	String name,desig;
	int age;
	transient int salary=30000;
	employee(String name,int age,String desig)
	{
		this.name=name;
		this.age=age;
		this.desig=desig;
	}
	
}
class objectiostream
{
	public static void main(String args[]) throws Exception
	{
		employee e=new employee("Archana",21,"Developer");
		FileOutputStream fos=new FileOutputStream("objectio.txt");
		ObjectOutputStream oos=new ObjectOutputStream(fos);
		oos.writeObject(e);
		oos.close();
		
		FileInputStream fis=new FileInputStream("objectio.txt");
		ObjectInputStream ois=new ObjectInputStream(fis);
		//System.out.println(ois.readObject());
		employee e1=(employee)ois.readObject();
		System.out.println("Name: "+e1.name);
		System.out.println("Age: "+e1.age);
		System.out.println("Designation: "+e1.desig);
		System.out.println("Salary: "+e1.salary);//it is transient so it will print as 0
		
	}
}