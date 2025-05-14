import java.io.*;
class stringreader
{
	public static void main(String args[])throws Exception
	{
		String str="Coimbatore is the Manchester of Tamilnadu";
		char arr[]=new char[100];
		StringReader sr=new StringReader(str);
		/*int i=0;
		sr.skip(11);
		while((i=sr.read())!=-1)
		{
			System.out.print((char)i);
		}*/
		// instead of these lines we can print the char array
		sr.read(arr);
		System.out.println(arr);
		sr.close();
	}
}