import java.io.*;
class bytearrayoutputstream
{
	public static void main(String args[])throws Exception
	{
		FileOutputStream fos1=new FileOutputStream("byteoutput1.txt");
		FileOutputStream fos2=new FileOutputStream("byteoutput2.txt");
		
		ByteArrayOutputStream baos=new ByteArrayOutputStream();
		String str="Welcome to Byte Output Stream";
		byte b[]=str.getBytes();
		baos.write(b);
		baos.writeTo(fos1);
		baos.writeTo(fos2);
		baos.close();
		
		
	}
}