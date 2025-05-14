import java.io.*;
class fileiostream
{
	public static void main(String args[])throws Exception
	{
		FileOutputStream fout=new FileOutputStream("fileio.txt");
		String str="Welcome to File Input Output Stream Code 1";
		byte b[]=str.getBytes();
		fout.write(b);
		fout.close();
		
		FileInputStream fin=new FileInputStream("fileinputoutput.txt");
		int i=0;
		while((i=fin.read())!=-1)
		{
			System.out.print((char)i);
		}
	}
}