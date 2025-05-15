class intern_method
{
	public static void main(String[] args) 
	{
        
        String str1="welcome";
        String str2="welcome";
 
        String str3=new String("welcome").intern();
 
        System.out.println(str1==str3);//returns true  
 
    }
}