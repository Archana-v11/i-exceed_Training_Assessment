class sample
{
	synchronized public void display(String msg)
	{
		System.out.print("[");
		System.out.print(msg);
		System.out.print("]");		
		this.show();
	}
	public void show()
	{
		System.out.println("HIII");
	}
}
class demo extends Thread
{
	Thread t=new Thread(this);
	sample s;
	String msg;
	demo(sample s,String msg)
	{
		this.s=s;
		this.msg=msg;
		t.start();
	}
	public void run()
	{
		s.display(msg);
	}
}

class synchronization
{
	public static void main(String args[])
	{
		sample s=new sample();
		demo d=new demo(s,"Welcome");
		demo d1=new demo(s,"to");
		demo d2=new demo(s,"i-exceed");
	}
}