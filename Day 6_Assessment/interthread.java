class customer
{
	int amt=10000;
	synchronized public void withdraw(int amt)
	{
		if(this.amt<amt)
		{
			System.out.println("Less Balance");
			try
			{
				wait();
			}
			catch(Exception e){}
		}
		this.amt-=amt;
		System.out.println("Withdrawed Balance"+this.amt);
	}

	synchronized public void deposit(int amt)
	{
		System.out.println("Going to Deposit");
		this.amt+=amt;
		System.out.println("Amount Deposited "+this.amt);
		notify();
	}
}

class interthread
{
	public static void main(String args[])
	{
		customer c=new customer();
		new Thread()
		{
			public void run()
			{
				c.withdraw(12000);
			}
		}.start();
		
		new Thread()
		{
			public void run()
			{
				c.deposit(10000);
			}
		}.start();
		
	}
}