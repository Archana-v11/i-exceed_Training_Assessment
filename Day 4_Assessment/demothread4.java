class sample extends Thread
{
	Thread t=new Thread(this);
	public void run()
	{
		for(int i=0;i<10;i++)
		{
			try
			{
				System.out.println("child"+i);
				t.sleep(1000);
			}
			catch(Exception e){}
		}
	}
}

class demothread4
{
	public static void main(String args[])throws Exception
	{
		new sample().start();
		Thread t=Thread.currentThread();
		for(int i=0;i<10;i++)
		{
			System.out.println("main"+i);
			t.sleep(1000);
		}
	}
}