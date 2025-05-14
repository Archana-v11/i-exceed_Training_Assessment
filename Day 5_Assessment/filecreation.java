import java.io.*;
class filecreation
{
	public static void main(String args[])throws Exception
	{
		File f=new File(args[0]);
		boolean status=f.createNewFile();
		if(status)
		{
			System.out.println("A new File is created");
		}
		else
		{
			System.out.println("A file is already available");
		}
		
		System.out.println("Name of the file: "+f.getName());
		System.out.println(f.isAbsolute());
		System.out.println("Path= "+f.getAbsolutePath());
		boolean exist=f.exists();
		if(exist)
		{
			System.out.println("Is it Readable? "+f.canRead());
			System.out.println("Is it Writable? "+f.canWrite());
		}
		// f.delete();  = it is used to delete the file
		// System.out.print(f.exists()) - it gives as false because there is no file 
						
		
	}
}