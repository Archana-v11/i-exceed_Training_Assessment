class sample extends Thread
{
	public void run() // default method that thread extends
	{
		System.out.println("Thread is running");
	}
}
class demothread1
{
	public static void main(String args[])
	{
		sample obj=new sample();
		obj.run(); // start() is used to call the method 
		// obj.start(); calling again gives error 
	}
}