public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{            
    boolean found = false;
    int counter = 0;
    double tenDigits = 0;
    while(!found){
      tenDigits = Double.parseDouble(e.substring(counter, counter + 10));
      if(isPrime(tenDigits)){
        found = true;
      } else {
        counter++;
      }
    }
    System.out.println(tenDigits);
}  
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double num){
  if(num == 1 || num < 0){
    return false;
  }
  if(num % 1 != 0){
    return false;
  }
  if(num == 2){
    return true;
  }
  int maxFactor = (int)Math.sqrt(num);
  for(int i = 2; i <= maxFactor; i++){
    if(num % i == 0){
      return false;
    }
  }
  return true;
}
