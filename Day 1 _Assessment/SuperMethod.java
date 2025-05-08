class student {
    String name="Archana";
    int age=21;
    String city="Coimbatore";
 
    public void displaystudent()
    {
        System.out.println(name+" "+age+" "+city);
    }
}
 
class school extends student
{
    String sname="PSG HSC";
    public void displayschool()
    {
        super.displaystudent();// called method of the super class
        System.out.println("Name of the school:"+sname);
    }
}
 
class SuperMethod
 {
      public static void main(String asd[])
      {
        school obj=new school();
        // obj.displaystudent();
        obj.displayschool();
      }
 }
 