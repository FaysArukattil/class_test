import 'dart:io';

void main()
{
 int k=0;
  for (int i = 1; i <= 4; i++) 
  {
    
    for (int j = i; j <= 4; j++) 
    {
      k++;
      stdout.write(" $k ");
    }
    print("");
    for (var z = 0; z < i; z++) 
    {
      stdout.write("   "); 
    }
    
  }
}