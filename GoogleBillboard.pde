public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
double dNum;
public void setup()  
{            
    //your code here 
    int beginIndex = 2;
    int endIndex = 12;
    String digits;
    for(int i=0; i<e.length();i++)
    {
    	beginIndex++;
    	endIndex++;
    	digits = e.substring(beginIndex,endIndex); 
    	dNum = Double.parseDouble(digits); 
    	if(isPrime(dNum)==true)
    	{
    		break;
    	}
    }
     
    System.out.println(dNum); 
}  
public void draw()  
{   
	//not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
    //your code here  
  if(dNum<2)
  {
    return false;
  }
  else
  {
    for(double i=2; i<= Math.sqrt(dNum); i++)
  	{
    	if(dNum % i==0)
    	{
      		return false;
    	}
  	}
  } 
  return true;  
} 
