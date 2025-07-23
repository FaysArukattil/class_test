
import 'dart:io';

void main()
{
  for(;;)
  {
  print("");
  stdout.write("Input:");
  int num = int.parse(stdin.readLineSync()!);

  if(num%6==0 && num%4==0 )
  {
    stdout.write("Output: QuadHex");  
  }
  else if (num%4==0) 
  {
    stdout.write("Output: Quad");  
  }
  else if(num%6==0)
  {
    stdout.write("Output: Hex");  
  }
 
  else
  {
    stdout.write("Output: $num"); 
  }
  }

}