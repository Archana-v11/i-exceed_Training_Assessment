class nestedif
{
	public static void main(String args[])
    {
        int i = 10;

        if (i == 10 || i < 15) 
		{              
            if (i < 15)
			{
				System.out.println("10 is smaller than 15");
			}           
            if (i < 12)
			{
                System.out.println("10 is smaller than 12 too");
			}
        }
        else {
            System.out.println("10 is greater than 15");
        }
    }
}