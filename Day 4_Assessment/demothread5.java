class sample extends Thread
{
	Thread t=new Thread(this);
	sample()
	{
		
	}
	public void run()
	{
		for(int i=0;i<5;i++)
		{
			try
			{
				System.out.println(i);
				t.sleep(1000);
			}
			catch(InterruptedException e)
			{}
		}
	}
}
class demothread5
{
	public static void main(String args[])throws InterruptedException
	{
		sample obj1=new sample();
		sample obj2=new sample();
		sample obj3=new sample();
		obj1.start();
		obj1.join(); //llows one thread to wait for the completion of another thread
		obj2.start();
		obj3.start();
		
	}

}