import 'dart:io';

void main()
{
int findLargest(list)
{
int greatest=0;
for (var element in list) 
{
  int e1=int.parse(element);
  e1 > greatest ? greatest=e1 : e1 ;
}

return greatest ;
}



List list=[];
stdout.write("Input:");
String s1=(stdin.readLineSync()!);
list=s1.split(",");
print("Output: ${findLargest(list)}");


  










}








