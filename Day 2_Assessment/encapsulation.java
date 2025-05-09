class employee
{
   private  String name;
   private  int e_no;
   private String design;
 
   public void setName(String name)
   {
    	this.name=name;
   }
	
   public void setEno(int e_no)
   {
    	this.e_no=e_no;
   }
 
   public void setDesign(String design)
   {
    	this.design=design;
   }
 
   public void getName()
   {
	   System.out.println("Name: "+name); 
   }
	
   public void getEno()
   {
	   System.out.println("Employee Number: "+e_no);
   }
   public String getDesign()
   {
    	return design;
   }
}

class encapsulation
{
	public static void main(String args[])
	{
		employee obj=new employee();
        obj.setName("Archana");
        obj.setEno(11);
        obj.setDesign("Developer");
 
        obj.getName();
        obj.getEno();
        System.out.println("Designation: "+obj.getDesign());
	}
}