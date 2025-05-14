import java.io.*;
class bufferedreader
{
	public static void main(String args[])throws Exception
	{
		FileReader fr=new FileReader("bufferedinput.txt");
		BufferedReader br=new BufferedReader(fr);
		//System.out.println((char)br.read()); this is used to reach 1st character from sentence
		/*int i=0;
		while((i=br.read())!=-1)
		{
			System.out.print((char)i);
		}*/
		//System.out.println(br.readLine());
		// This alone is enough to print the contents in the file rather than using while loop
	    System.out.println("Is mark supported? "+br.markSupported());
		System.out.println((char)br.read());
		System.out.println((char)br.read());
		br.mark(10);
		System.out.println((char)br.read());
		br.reset();
		System.out.println((char)br.read());
		int i=0;
		while((i=br.read())!=-1)
		{
			System.out.print((char)i);
		}
		br.close();
		
	}
}