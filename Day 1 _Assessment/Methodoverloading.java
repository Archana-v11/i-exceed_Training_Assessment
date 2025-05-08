class Calculator {

     public void add(int a, int b) 
    {
        System.out.println(a+b);
        
    }
   
    public void add(int a, int b, int c)
    {
        System.out.println(a + b + c);
    }
   
   }

class Methodoverloading {
    public static void main(String[] args)
 {
        Calculator calc = new Calculator();
	calc.add(10,20);
	calc.add(10,20,30);

  }
}
