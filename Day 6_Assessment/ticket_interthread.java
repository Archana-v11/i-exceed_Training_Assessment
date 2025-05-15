class ticket
{
	int seat=0;
	synchronized public void bookticket(int req_seats)
	{
		System.out.println("Trying to book Tickets");
		if(seat<req_seats)
		{
			System.out.println("Not enough seats available");
			try
			{
				wait();
			}
			catch(Exception e){}
		}
		seat-=req_seats;
		System.out.println("Ticket Booked, Remaining seats is: "+seat);
	}
	
	synchronized public void addtickets(int new_seats)
	{
		System.out.println("Adding new seats");
		seat+=new_seats;
		System.out.println("Tickets added , avaialable seat is: "+seat);
		notify();
	}
}
class ticket_interthread
{
	public static void main(String args[])
	{
		ticket c=new ticket();
		new Thread()
		{
			public void run()
			{
				c.bookticket(2);
			}
		}.start();
		
		new Thread()
		{
			public void run()
			{
				c.addtickets(10);
			}
		}.start();
		
	}
}