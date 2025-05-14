import java.io.*;
class reader
{
	public static void main(String args[])throws Exception
	{
		Reader r=new FileReader("bufferedinput.txt");
		System.out.println(r.ready());
		char arr[]=new char[100];
		r.read(arr);
		System.out.println(arr);
		r.close();
	}
}