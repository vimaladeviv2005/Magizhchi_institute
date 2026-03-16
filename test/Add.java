class Add
{
	Add(int a,int b)
	{
		System.out.println("Two parameter passed");
		
		int res=a+b;
		System.out.println(res);
	}
	Add(int a,int b,int c)
	{
		System.out.println("Three parameter passed");
		int res=a+b+c;
		System.out.println(res);
	}
	Add(int a,int b,int c,int d)
	{
		System.out.println("Four parameter passed");

		int res=a+b+c+d;
		System.out.println(res);
	}
	Add(float a,float b)
	{
		System.out.println("Decimal parameter passed");

		float res=a+b;
		System.out.println(res);
	}
	
	public static void main(String args[])
	{
		Add obj=new  Add(10,5);
		Add obj1=new Add(10,5,5);
		Add obj2=new Add(10,5,5,5);
		Add obj3=new Add(10.5f,20.7f);
	}
}