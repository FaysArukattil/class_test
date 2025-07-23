import 'dart:io';

void main()
{

for (var i = 1; i <= 5; i++)
{
  for (var j = 0; j<i; j++) 
  {
    stdout.write(" * ");  
  }
  print(""); 
}

for (var i = 5; i > 0; i--)
{
  for (var j = 1; j<i; j++) 
  {
    stdout.write(" * ");  
  }
  print(""); 
}






}