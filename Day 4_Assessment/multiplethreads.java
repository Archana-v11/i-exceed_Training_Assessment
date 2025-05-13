class thread1 extends Thread
{
	public void run()
	{
		for(int i=0;i<5;i++)
		{
			System.out.println(i);
		}
	}
}
class thread2 extends Thread
{
	public void run()
	{
		for(int i=0;i<5;i++)
		{
			System.out.println(i);
		}
	}
}
class multiplethreads
{
	public static void main(String args[])throws InterruptedException
	{
		Thread t=new Thread();
		thread1 t1=new thread1();
		thread2 t2=new thread2();
		t1.start();
		t.join();
		t2.start();
	}
}