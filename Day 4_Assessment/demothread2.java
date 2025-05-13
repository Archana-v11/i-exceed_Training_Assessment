class sample extends Thread
{
	public void run() // default method that thread extends
	{
		for(int i=0;i<10;i++)
		{
			System.out.println("Child "+i);
		}
	}
}
class demothread2
{
	public static void main(String args[])
	{
		sample obj=new sample();
		obj.start(); // start() is used to call the method 
		for(int i=0;i<10;i++)
		{
			System.out.println("main "+i);
		}
	}
}