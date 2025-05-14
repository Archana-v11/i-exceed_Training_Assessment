import java.io.*;
class dataiostream
{
	public static void main(String args[])throws Exception
	{
		FileOutputStream fos=new FileOutputStream("dataio.txt");
		DataOutputStream dos=new DataOutputStream(fos);
		dos.writeInt(11);
		dos.writeBoolean(true);
		dos.writeDouble(34.5);
		
		FileInputStream fis=new FileInputStream("dataio.txt");
		DataInputStream dis=new DataInputStream(fis);
		System.out.println(dis.readInt());
		System.out.println(dis.readBoolean());
		System.out.println(dis.readDouble());
		
		DataInputStream dis1=new DataInputStream(System.in);
		int x=Integer.valueOf(dis1.readLine()).intValue();
		int y=Integer.parseInt(dis1.readLine());//another way to get input as integer
		System.out.println(x+y);
	}
}