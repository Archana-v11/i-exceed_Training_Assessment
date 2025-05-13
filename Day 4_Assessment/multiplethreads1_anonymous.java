class multiplethreads1_anonymous
{
	public static void main(String args[])
	{
		// 1st thread
		new Thread()
		{
			public void run()
			{
				System.out.println("Thread 1");
			}
		}.start();
		
		// 2nd thread
		new Thread()
		{
			public void run()
			{
				System.out.println("Thread 2");
			}
		}.start();
		
		// 3rd thread
		new Thread()
		{
			public void run()
			{
				System.out.println("Thread 3");
			}
		}.start();
	}
}