import java.io.*;
class bytearrayiostream
{
	public static void main(String args[])throws Exception
	{
		FileOutputStream fos1=new FileOutputStream("bytearrayio.txt");
		
		
		ByteArrayOutputStream baos=new ByteArrayOutputStream();
		String str="Welcome to ByteArrayInputOutput Stream";
		byte b[]=str.getBytes();
		baos.write(b);
		baos.writeTo(fos1);
		baos.close();
		
		ByteArrayInputStream bais=new ByteArrayInputStream(b);
		System.out.println(bais.read());
		System.out.println(bais.available());
		int i=0;
		while((i=bais.read())!=-1)
		{
			System.out.print((char)i);
		}
		
	}
}