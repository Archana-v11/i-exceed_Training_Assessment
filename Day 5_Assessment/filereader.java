import java.io.*;
class filereader
{
	public static void main(String args[])throws Exception
	{
		File fo=new File("bufferedinput.txt");
		FileReader f=new FileReader(fo);
		int i=0;
		while((i=f.read())!=-1)
		{
			System.out.print((char)i);
		}
		System.out.println();
		System.out.println(f.getEncoding());
		f.close();
	}
}