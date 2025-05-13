class sample extends Thread
{
    Thread t=new Thread(this); // this is for non static method declaration of thread
    public void run()
	{
	  t.setName("Child thread");
	  System.out.println("Name of the thread\t"+t.getName());	
	  System.out.println(t.getPriority());
	}
} 
class demothread3
{

    public static void main(String ads[])

	{

	    new sample().start();

	    Thread t=Thread.currentThread(); // this is for static method thread declaration

	    t.setName("Main thread");

	    System.out.println(t.getName());
	    System.out.println(t.getPriority());

	}

}
 