import java.io.DataInputStream;
class sample
{
	DataInputStream din=new DataInputStream(System.in);
	sample()
	{
		try
		{
			System.out.println("Welcome too thread");
			String str=din.readLine();
			int a=Integer.parseInt(din.readLine()); //to get the input as string and convert it to int again
			int b=Integer.valueOf(din.readLine()).intValue(); // another method to get input as string and convert as int 
			float c=Float.valueOf(din.readLine()).floatValue();
			System.out.println(str);
			System.out.println(a+b);
			System.out.println(c);
		}
		catch(Exception e)
		{}
	}
}

class demostream
{
	public static void main(String args[])
	{
		new sample();
	}
}