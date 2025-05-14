import java.io.*;
class bufferedinputstream // it is used to add extra functioanlity to other input streams
{
	public static void main(String args[])throws Exception
	{
		FileOutputStream fout=new FileOutputStream("bufferedinput.txt");
		String str="Welcome to Buffered Input Stream Code";
		byte b[]=str.getBytes();
		fout.write(b);
		fout.close();
		
		FileInputStream fin=new FileInputStream("bufferedinput.txt");
		System.out.println("Before Reading: "+fin.available());//returns the no of bytes that is availabe
		fin.skip(2);
		int i=0;
		while((i=fin.read())!=-1)
		{
			System.out.print((char)i);
		}
		System.out.println();
		System.out.println("After Reading: "+fin.available());
	}
}